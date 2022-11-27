#!/bin/bash
# OpenRA Mod SDK notarisation script for macOS
#
# The application bundles will be signed if the following environment variables are defined:
#   MACOS_DEVELOPER_IDENTITY: The alphanumeric identifier listed in the certificate name ("Developer ID Application: <your name> (<identity>)")
#                             or as Team ID in your Apple Developer account Membership Details.
#
# The applicaton bundles will be notarized if the following environment variables are defined:
#   MACOS_DEVELOPER_USERNAME: Email address for the developer account
#   MACOS_DEVELOPER_PASSWORD: App-specific password for the developer account
#
set -e

if [[ "$OSTYPE" != "darwin"* ]]; then
	echo >&2 "macOS notarisation requires a macOS host"
	exit 1
fi

command -v python3 >/dev/null 2>&1 || { echo >&2 "The OpenRA mod SDK macOS packaging requires python 3."; exit 1; }

UNNOTARIZED_DISK_IMAGE="${1}"

if [ $# -eq "1" ]; then
	OUTPUTDIR=$(python3 -c "import os; print(os.path.realpath('.'))")
else
	OUTPUTDIR=$(python3 -c "import os; print(os.path.realpath('$2'))")
fi

if [ ! -d "${OUTPUTDIR}" ]; then
	echo "Output directory '${OUTPUTDIR}' does not exist.";
	exit 1
fi

notarize_package() {
	DMG_PATH="${1}"
	NOTARIZE_DMG_PATH="${DMG_PATH%.*}"-notarization.dmg
	echo "Submitting ${DMG_PATH} for notarization"

	# Reset xcode search path to fix xcrun not finding notarytool
	sudo xcode-select -r

	# Create a temporary read-only dmg for submission (notarization service rejects read/write images)
	hdiutil convert "${DMG_PATH}" -format ULFO -ov -o "${NOTARIZE_DMG_PATH}"

	xcrun notarytool --wait --apple-id "${MACOS_DEVELOPER_USERNAME}" --password "${MACOS_DEVELOPER_PASSWORD}" --team-id "${MACOS_DEVELOPER_IDENTITY}" --file "${NOTARIZE_DMG_PATH}"

	rm "${NOTARIZE_DMG_PATH}"

	echo "${DMG_PATH}: Stapling tickets"
	DMG_DEVICE=$(hdiutil attach -readwrite -noverify -noautoopen "${DMG_PATH}" | egrep '^/dev/' | sed 1q | awk '{print $1}')
	sleep 2

	xcrun stapler staple "/Volumes/${PACKAGING_DISPLAY_NAME}/${PACKAGING_OSX_APP_NAME}"
	xcrun stapler validate "/Volumes/${PACKAGING_DISPLAY_NAME}/${PACKAGING_OSX_APP_NAME}"

	sync
	sync

	hdiutil detach "${DMG_DEVICE}"
}

finalize_package() {
	INPUT_PATH="${1}"
	OUTPUT_PATH="${2}"

	if [[ "${INPUT_PATH}" = "*-mono" ]]; then
		hdiutil convert "${INPUT_PATH}" -format UDZO -imagekey zlib-level=9 -ov -o "${OUTPUT_PATH}"
	else
		# ULFO offers better compression and faster decompression speeds, but is only supported by 10.11+
		hdiutil convert "${INPUT_PATH}" -format ULFO -ov -o "${OUTPUT_PATH}"
	fi
	rm "${INPUT_PATH}"
}

if [ -n "${MACOS_DEVELOPER_USERNAME}" ] && [ -n "${MACOS_DEVELOPER_PASSWORD}" ] && [ -n "${MACOS_DEVELOPER_IDENTITY}" ]; then
	notarize_package "${UNNOTARIZED_DISK_IMAGE}"
fi

finalize_package "${UNNOTARIZED_DISK_IMAGE}" "${OUTPUTDIR}/${PACKAGING_INSTALLER_NAME}-${TAG}.dmg"

