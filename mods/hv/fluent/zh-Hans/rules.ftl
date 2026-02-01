options-starting-units =
    .base-only = 指挥中心
    .base-miner = 指挥中心和钻矿车
    .base-scout = 指挥中心和斥候
checkbox-build-radius =
    .label = 有限的建造区域
    .description = 建筑只能放置在指挥中心或前哨站周围的一定范围内
faction-yuruki =
    .name = 萬木工業
    .description =
        萬木工業株式会社
        因星际殖民而逐步发展壮大的巨型企业
        得益于自身稳固的殖民地防御系统
        萬木已经准备好将整个太阳系内的业务全部收入囊中

        阵营特色：
            - 以固定翼战机作为主力飞行器

        特殊单位：
            - 镭射荚舱
            - 自爆荚舱
            - 远狙荚舱
            - 加特林摩托
            - 黑客坦克
            - 镭射坦克
            - 隐形坦克
            - 萬木星舰

        超级武器：
            - 地毯式轰炸
            - 力场护盾发生器
            - 星轨离子炮轰炸
faction-synapol =
    .name = 光明同调
    .description =
        光明同调航天科技有限公司
        以星际殖民为主要业务的大型星际企业
        光明同调以强大的自产自销能力作为核心卖点
        甚至训练出了足以媲美正规军的私人安保武装为全体客户保驾护航

        阵营特色：
            - 以旋翼直升机作为空军主力部队
            - 拥有先进的海军部队

        特殊单位：
            - 火箭荚舱
            - 火焰喷射器荚舱
            - 迫击炮荚舱
            - 斜坡越野车
            - Countermeasure Tank
            - 激光坦克
            - 导弹射击坦克
            - 光明母舰

        超级武器：
            - 空投吊舱
            - 重炮支援
            - 核弹攻击
faction-random =
    .name = 随机
    .description =
        随机阵营
        游戏开始时将为玩家随机选择一个阵营
checkbox-crates =
    .label = 随机魔方
    .description = 开启后，地图上出现效果不一的魔方以供收集
resource-generic = 金属矿脉
resource-gold = 金矿矿脉
resource-iron = 铁矿矿脉
bot-rogue-ai =
    .name = 诡诈的电脑玩家
notification-game-loaded = 已载入存档
notification-game-saved = 已保存进度
notification-unit-lost = 已损失一个单位
notification-building-lost = 已损失一座建筑
notification-building-captured = 已占领一座建筑
notification-low-power = 电力短缺
notification-new-construction-options = 已解锁新的建造选项
notification-cant-place-building = 无法在此处放置建筑
notification-insufficient-funding = 资金短缺
notification-order-placed = 已创建订单
notification-building-ready = 建筑已就绪
notification-building = 建造中
notification-on-hold = 等待中
notification-cancelled = 已取消
notification-unit-ready = 单位已就绪
notification-training = 训练中
notification-no-space = 空间不足
notification-outpost-established = 已建立一座前哨站
notification-miner-ready = 钻矿车已就绪
notification-map-revealed = 战场地形已揭示
notification-unit-cloaked = 单位已隐形
notification-enemy-units-detected = 侦测到敌方单位
notifications-repairing = 维修中
notification-unit-repaired = 已完全修复一个单位
notification-select-target = 请指示技能的目标
notification-drop-pod-charging = 正在准备下一批空投仓
notification-drop-pod-ready = 空投仓已就绪
notifications-drop-pod-incoming = 正在部署空投仓
notification-reinforcementa-arrived = 援军已抵达
notification-howitzer-detected = 侦测到 超重型榴弹炮
notification-howitzer-charging = 重炮支援 正在充能
notification-howitzer-ready = 重炮支援 已就绪
notification-force-field-detected = 侦测到 力场护盾生成器
notification-force-field-charging = 力场护盾 正在充能
notification-force-field-ready = 力场护盾 已就绪
notification-force-field-engaged = 力场护盾 已部署
notification-nuke-detected = 侦测到 核弹发射中心
notification-nuke-charging = 核弹攻击 正在充能
notification-nuke-ready = 核弹攻击 已就绪
notification-railgun-detected = 侦测到 星轨通讯控制中心
notification-railgun-charging = 星轨电磁炮轰炸 正在充能
notification-railgun-ready = 星轨电磁炮轰炸 已就绪
notification-insufficient-power = 电力短缺
notification-televator-charging = 空间传送 正在充能
notification-televator-ready = 空间传送 已就绪
actor-gunship =
    .description =
        装备有火神炮的反步兵固定翼战机
        强势对抗：机械化步兵、建筑、飞行器
        弱势对抗：载具
    .name = 炮艇机
    .encyclopedia =
        炮艇机是一种多用途的高速固定翼战机。它配备的火神炮在打击敌方机械化步兵的同时，还可以袭击孤立的敌方钻矿塔或前哨站。

        { actor-gunship.description }

        所属方：萬木工業
actor-jet =
    .description =
        高速对地攻击机
        强势对抗：建筑
        弱势对抗：机械化步兵、载具
        无法攻击飞行器
    .name = 狂飙攻击机
    .encyclopedia =
        这种装备了等离子重炮的对地攻击机可以轻易摧毁敌方建筑。虽然狂飙攻击机的机动性略逊一筹，但它有着远超其他战机的生存性和耐久度。

        { actor-jet.description }

        所属方：萬木工業
actor-jet2 =
    .description =
        固定翼轰炸机
        强势对抗：建筑
        弱势对抗：载具、机械化步兵
        无法攻击飞行器
    .name = 重型轰炸机
    .encyclopedia =
        这种装备了等离子重炮的对地攻击机可以轻易摧毁敌方建筑。虽然重型轰炸机机动性略逊一筹，但它有着远超其他战机的生存性和耐久度。

        { actor-jet2.description }

        所属方：萬木工業
actor-copter =
    .name = 武装直升机
    .description =
        泛用型小型旋翼战机
        强势对抗：机械化步兵、建筑、飞行器
        弱势对抗：载具
    .encyclopedia =
        武装直升机是一种多用途的小型旋翼机。它的火神炮台在打击敌方机械化步兵的同时，还可以袭击孤立的敌方钻矿塔或前哨站。

        { actor-copter.description }

        所属方：光明同调
actor-saucer =
    .name = 侦察飞碟
    .description =
        侦察用的飞行器
        无武装
    .encyclopedia =
        一种专用于侦察和情报收集任务的碟状飞行器。由于它不同寻常的外表和躲避雷达侦测的能力，许多普通民众往往会在目击到侦察飞碟后将他们的经历向当局汇报。

        { actor-saucer.description }

        所属方：萬木工業
actor-observer =
    .name = 侦察气球
    .description =
        侦察用飞行器。
        无武装
    .encyclopedia =
        一种专用于侦察和情报收集任务的气球状飞行器。侦察气球不适合用来作战。

        { actor-observer.description }

        所属方：光明同调
actor-banshee =
    .name = 报丧女妖
    .description =
        重型旋翼炮艇机
        强势对抗：建筑
        弱势对抗：载具、机械化步兵
        无法攻击飞行器
    .encyclopedia =
        报丧女妖相比其他旋翼机有着更高的耐久度和更差的机动性，它配备的对地导弹能够有效打击各种地面目标，尤其是敌方建筑。

        { actor-banshee.description }

        所属方：光明同调
actor-turtle =
    .name = 玄武要塞
    .description =
        空中堡垒
        无法攻击地面单位
        强势对抗：飞行器
        弱势对抗：地面单位
    .encyclopedia =
        待定

        { actor-turtle.description }

        所属方：光明同调
actor-chopper =
    .name = 运输直升机
    .description =
        多功能运输机
        可以运载若干机械化步兵
        或者吊运一辆载具
    .encyclopedia =
        运输直升机是一种重型飞行器，其最大载重量相当于一小队机械化步兵。它也可以吊运一辆载具。

        { actor-chopper.description }

        所属方：光明同调
actor-chopper-husk-name = 运输直升机
actor-balloon =
    .name = 侦察气球
    .description =
        侦察用飞行器。
        无武装
    .encyclopedia =
        一种专用于侦察和情报收集任务的气球状飞行器。侦察气球不适合用来作战。

        所属方：光明同调
actor-dropship =
    .name = 重型运输机
    .description =
        多功能运输机
        可以运载若干机械化步兵
        或者吊运一辆载具s
    .encyclopedia =
        重型运输机是一种大型飞行器，其最大载重量相当于一小队机械化步兵。它也可以吊运一辆载具。

        { actor-dropship.description }

        所属方：萬木工業
actor-dropship-husk-name = 重型运输机
actor-drone-name = 无人机
actor-landedpod-name = 空投吊舱
actor-bomber-name = 同温层轰炸机
actor-bomber-encyclopedia =
    同温层轰炸机是一种可以迅速在目标上空投掷大量炸弹的高速战略轰炸机。下达空袭指令后，这些轰炸机将从萬木工業雷达起飞，直奔目标而去。

    强势对抗：建筑
    弱势对抗：机械化步兵、载具

    所属方：萬木工業（支援能力）
actor-cargoship-name = 补给货船
actor-cargoship-encyclopedia =
    补给货船是一种专用于在星际贸易的运输舰。所有通过贸易中心订购的单位都将通过补给货船运抵战场。
    无武装

    所属方：无法建造
actor-airlifter-name = 补给货机
actor-airlifter-encyclopedia =
    补给货机是一种专用于在星际贸易的运输舰。所有通过贸易中心订购的单位都将通过补给货船运抵战场。
    无武装

    所属方：无法建造
actor-beast =
    .name = 土著生物
    .generic-name = 土著生物
actor-crow-name = 渡鸦兽群
actor-crow2-name = 渡鸦兽群
actor-gull-name = 海鸥兽群
actor-gull2-name = 海鸥兽群
actor-seamonster-name = 海巨怪
actor-worm-generic-name = 土著蠕虫
actor-goldball =
    .name = 金属球
    .generic-name = 黄金
actor-base =
    .name = 指挥中心
    .description =
        建造各类建筑、工程车和钻矿车
        同一玩家同时只能拥有一座指挥中心。
    .encyclopedia = 指挥中心是玩家基地的核心，用于建造其他建筑和功能性载具，比如钻矿车或工程车。指挥中心提供的建筑范围不仅可以用于建设自己的建筑，也可以放置盟友的建筑。如果玩家需要扩展建筑范围，那么需要通过指挥中心制造的工程车（部署为前哨站）来完成这一任务。玩家应该尽全力保护自己的指挥中心；如果指挥中心被摧毁，那么玩家可以通过选择一座前哨站来重新建立一座指挥中心以寻求逆转。
actor-outpost =
    .name = 前哨站
    .encyclopedia = 不像其他建筑，前哨站无法以常规的方式通过指挥中心建造，而是只能通过部署工程车而得到。前哨站可以用来扩展指挥中心的建筑范围，也可以用来在远离主基地的位置建立一座前进基地。值得注意的是，前哨站是在玩家失去自己的指挥中心后，唯一一座可以帮助玩家重建指挥中心的建筑！
actor-generator =
    .description = 为基地其他建筑提供电力
    .encyclopedia =
        发电厂可以为基地的各类建筑提供电力。电力短缺会对基地内的不同建筑造成各类负面影响：雷达将无法提供小地图，各类生产建筑的生产效率被严重降低，无法正常使用支援能力，基地的各类防御建筑也将停摆。

        玩家一方面可以通过兴建更多发电厂来摆脱电力短缺的窘境，另一方面也可以通过“停止供电”来停用某些建筑，从而降低整个基地对电力的需求。点击侧边栏的“闪电”图标，再点击你想要“停止供电”的建筑，这样被停用的建筑就不会再消耗电力，直至恢复供电。然而，被停用的建筑也将会失去几乎一切功能：生产停止、科技供应中断（从而取消相应科级单位的所有生产进度）。

        为了避免陷入此类困境，玩家应该总是提前准备好额外的发电厂以防万一。电力短缺的惩罚也意味着，玩家也可以将攻击对手的电力供应设施作为一种可行而有效的战术 —— 迫使对手花费大量时间和精力重新维护和调度他的电力供应，或者不得不背负着各类停电惩罚（诸如防御设施停摆、生产效率被降低）与玩家战斗。
    .name = 发电厂
actor-radar =
    .description =
        提供战术地图
        解锁阵营支援能力
        需要电力才能运转
    .encyclopedia =
        雷达站将会在侧边栏的右上方解锁“小地图”，同时其自身有极其宽阔的视野范围。作为玩家所能建造的第一批科技建筑之一，它还用于解锁新单位、建筑以及阵营的支援能力（地毯式轰炸或空投吊舱）。
        附：向地毯式轰炸这样“外部单位进场式”的支援能力，可以通过按住鼠标左键并拖拽的方式来决定支援能力的进场方向。
    .name = 雷达站
    .airstrikepower-name = 地毯式轰炸
    .airstrikepower-description = 三架同温层轰炸机将在选定区域空投若干炸弹
actor-radar2 =
    .droppodspower-name = 空投吊舱
    .droppodspower-description = 通过星轨平台向选定区域空投若干机械化步兵
actor-trader =
    .description =
        消耗资金以维修载具或飞行器
        可以在星际贸易市场上购买单位
    .encyclopedia = 玩家可以通过贸易中心在星际贸易市场上购买单位，订单将通过补给货机或补给货船运抵战场，这使得贸易中心可以充当玩家的第二条载具生产队列，虽然它的生产成本更高一些。玩家也可以花费一定资金在贸易中心修复那些在战场上受损的载具。特别地，对受损的载具下达侧边栏右上角的“维修”指令也可以让载具自动返回最近的贸易中心接受维修。贸易中心也是玩家所能建造的第一批科技建筑之一，它可以解锁主战坦克的制造技术。
    .name = 贸易中心
actor-module =
    .description = 训练机械化步兵并可修复他们的载具
    .encyclopedia =
        模块工厂建造各类机械化载人模块，并将步兵武装为机械化步兵。机械化载人模块可以按照需求组装或改装成多种究极轻量化的单兵战斗载具。这些单兵载具在为步兵提供必要的机动能力和环境防护的能力的同时，略微提升他们的战场生存率。步兵完成这些模块的操作训练后，即成为战场上常见的机械化步兵。
        轻型模块工厂也相当于参战各方机械化步兵的总后勤部和总装备部——无论是步兵负伤，还是机械化载人模块受损，都可以返回此处疗伤整备。
    .name = 轻型模块工厂
actor-miner2 =
    .name = 钻矿塔
    .encyclopedia =
        玩家可以在指挥中心或者大型模块工厂内制造钻矿车，也可以通过建造矿仓获得其附带的钻矿车。钻矿车可以部署在铁矿矿脉或者黄金矿脉上，从而转变为钻矿塔，持续从对应的金属矿脉中获取原料。值得注意的是，黄金矿脉的价值要高于铁矿矿脉。一旦钻矿塔收集到了一定量的原料，那么它将会自动生成一辆货车，把采集到的原料运送回最近的矿仓以转化为军费（即玩家的可用资金）。金属矿脉并非用之不竭的，一座耗尽的金属矿脉虽然也能持续产出原料，但其效率会大幅降低。玩家可以使用右键将选中的钻矿塔重新打包为钻矿车，前往其他矿脉，或者躲避来袭的敌人。
        如果是经典操作模式，应使用左键来重新打包。
actor-starport =
    .name = 星港
    .encyclopedia = 星港是一体化的飞行器建造和行动基地。在星港地底有一座极其先进和完备的飞行器建造设施，足以确保所有生产出来的飞行器都可以在战斗期间自行维护——无需重新补充燃油或弹药。
    .description = 生产各类飞行器
actor-factory =
    .description = 生产各类坦克和装甲车
    .name = 大型模块工厂
    .encyclopedia =
        大型模块工厂源源不断地生产着那些用来组装各类坦克和装甲车的大型机械模块。多个大型模块工厂可以提升玩家生产坦克等战斗车辆的效率。
        右键点击选中的大型模块工厂来将它指定为"主要建筑"，让生产完毕的载具从这座工厂投入战斗。选中大型模块后，在地图上点击右键来设置该工厂的"集结点"。
        如果是经典操作模式，则上述两操作均为左键。
actor-techcenter =
    .description = 解锁高级科技
    .name = 科技归档中心
    .encyclopedia =
        各星际殖民公司有一条不成文的规矩：只有受到严密保护的大型殖民船团才有随船资格携带全套技术下载和存储设备，特别是那些最尖端的专利技术。殖民地高层官员通常会从专门的加密服务器中下载这些技术文件，随后妥善存储在一个安保严格的配套设施里。一旦最危急的状况来临，殖民地官员将会亲自解锁这些蓝图，并授权各工厂迅速生产那些"沉睡"在蓝图中的武器设备，从而高效地化解眼前的危机。
        遗憾的是，保存这些技术文档的设备和计算机需要消耗大量电力；虽然归档中心可以启用应急发电机来确保文件不受损失，但这些应急电力不足以维持数据的稳定传输，因此殖民地在此期间将无法生产和训练各高级单位。
actor-oresmelt =
    .name = 矿石熔炼塔
    .encyclopedia = 矿石熔炼塔是一种提升殖民地经济产出的特殊建筑，在长期的对抗冲突中尤其有效。矿石熔炼塔可以将收集到的矿物进一步提炼并获得更纯净的金属原料，从而改善殖民地的经济。然而为了维持熔炼塔在提纯金属时所必需的超高温环境，殖民地不得不建造更多发电设施来为熔炼塔提供稳定的电力。
    .description =
        矿石熔炼塔
        提供额外的经济收入
actor-orepurifier =
    .name = 矿石提纯器
    .description =
        矿石提纯器
        提供额外的经济收入
    .encyclopedia = 矿石提纯器是一种提升殖民地经济产出的特殊建筑，在长期的对抗冲突中尤其有效。矿石提纯器可以将收集到的矿物进一步提炼并获得更纯净的金属原料，从而改善殖民地的经济。然而为了维持提纯器在二次冶炼金属时所必需的超高温环境，殖民地不得不建造更多发电设施来为提纯器提供稳定的电力。
actor-bunker =
    .description =
        基础防御建筑
        需要电力才能运转
        默认强势对抗：机械化步兵
        默认弱势对抗：载具
    .name = 碉堡
    .encyclopedia = 碉堡是一种简易的基础防御设施，通过在战斗室外部修建各类掩体来抵御敌方机械化步兵的进攻。虽然这类防护可以有效阻挡机枪类武器的攻击，但面对导弹或坦克炮则免不了房倒屋塌的悲惨结局。碉堡默认驻扎了一名机械化步枪兵，但可以通过更换驻军来改变碉堡的武器；或者也可以在危急时刻让驻军撤离，否则碉堡本身就将成为驻军的坟墓。
actor-turret =
    .description =
        基础防御建筑
        需要电力才能运转
        强势对抗：载具、舰艇
        弱势对抗：机械化步兵
    .name = 反坦克炮塔
    .encyclopedia = 反坦克炮塔是一种专用于对抗大型装甲车辆的防御设施。它配备的穿甲弹不仅难以有效杀伤灵活机动的机械化步兵，炮塔本身的俯仰角也让它在面对各类飞行器时心有余而力不足。反坦克炮塔内的全自动装填机和电子打火器都需要消耗一定的电力，如果基地电力供应不足，那么整个炮塔将会彻底停摆...
actor-turret2 =
    .description =
        基础防御建筑
        需要电力才能运转
        强势对抗：载具、舰艇
        弱势对抗：机械化步兵
    .name = 反坦克炮塔
actor-aaturret =
    .description =
        防空设施
        需要电力才能运转
        强势对抗：飞行器
        弱势对抗：地面单位
    .name = 防空炮
actor-aaturret2 =
    .description =
        防空设施
        需要电力才能运转
        强势对抗：飞行器
        弱势对抗：地面单位
    .name = 防空炮
    .encyclopedia = 所有的防空塔都只有一个任务：高效地将来袭的敌方飞行器撕成碎片。当然，殖民地有时候也会面对弹道导弹或者远程火箭弹的袭击，此时防空塔也能对这些目标发起有效拦截，从而保护整个殖民地。防空塔内全天候运作的雷达和照准设备需要消耗大量电力，因此维持好防空塔和发电厂的"共生关系"也是非常重要的！
actor-howitzer =
    .description =
        超级武器
        发射一轮由若干高爆炮弹组成的弹幕
        需要电力才能运转
        同一玩家同时只能拥有一座 超重型榴弹炮
    .name = 超重型榴弹炮
    .encyclopedia =
        超重型榴弹炮是一种射程足以覆盖整个战场的超大型传统火炮，它可以一次性发射多枚现代雷达和导弹系统无法拦截的高爆弹，这种弹幕将以抛物线的轨迹径直落向目标区域。由于超重型榴弹炮的维护、装填、照准和开火等一系列操作极其繁复耗时，因此超重型榴弹炮的运维和操作团队只会服从战场最高指挥官一个人的手令。
        一般来说，横跨战场的弹幕往往难以命中步兵或者坦克，但对付那些"没有腿"的建筑和防御塔却是绰绰有余：用强大的高爆弹幕先行破坏敌方防线，再以步兵和载具压上，是光明同调的常见战法之一。
    .attackorderpower-name = 重炮支援
    .attackorderpower-description = 向选定的区域以抛物线轨迹发射一轮高爆弹幕
actor-field =
    .description =
        超级武器
        保护友方单位的电磁护盾
        需要电力才能运转
        同一玩家同时只能拥有一座 力场护盾生成器
    .name = 力场护盾生成器
    .encyclopedia = 力场护盾是一种特殊的电磁能量场，可以保护友方各类载具抵御来袭的武器伤害。虽然为了给生成器充能需要花费相当多的时间和电力，而且护盾也只能持续半分钟，但它在实战中的表现足以自证。
    .force-field-name = 力场护盾
    .force-field-description = 使受影响的友方单位在30秒持续时间内受到的任意来源伤害降低30%
actor-silo =
    .name = 核弹发射中心
    .encyclopedia = 虽然殖民地不具备就地组装核弹的权限，但这并不影响他们使用核武器。光明同调的指挥官会在这座设施内向他们的星轨轰炸舰播发一条极度机密的申请，而后轰炸舰会在指定地点空投一枚战术核弹。遗憾的是，即使战术核弹有着毁灭性的破坏力，在实战里的效率仍然受到了时间和电力供应等现实因素的制约。光明同调特别擅长核弹开路后再由攻击部队清场。
    .description =
        超级武器
        向目标区域发射一枚战术核弹
        需要电力才能运转
        同一玩家同一时间只能拥有一座 核弹发射中心
    .nukepower-name = 核弹攻击
    .nukepower-description = 向目标区域发射一枚战术核弹
actor-uplink =
    .name = 星轨通讯控制中心
    .encyclopedia = 萬木工業在行星同步轨道上部署了大量用于发射超高速弹药的星空电磁炮。相比光明同调的核弹，电磁炮可以瞬间命中目标区域，几乎无法被躲避，然而电磁炮的毁伤范围远低于核弹所造成的冲击波；另一方面，通讯中心和星轨电磁炮的联络和维护都需要消耗大量的时间和电力，因此萬木工業的指挥官们往往会谨慎地选择电磁炮的开火时机与目标。
    .description =
        超级武器
        指示星轨电磁炮轰炸指定区域
        需要电力才能运转
        同一玩家同一时间只能拥有一座 星轨通讯控制中心
    .railgun-name = 星轨电磁炮轰炸
    .railgun-description =
        使用星轨电磁炮轰炸选定区域
        立刻对小范围造成即时伤害
actor-storage =
    .description = 存储收集到的资源
    .name = 矿仓
    .encyclopedia = 矿仓是殖民地地表矿物采集作业的核心建筑。矿仓自带一辆钻矿车，以便玩家在最近的矿脉建立一座钻矿塔；矿仓也能解锁钻矿车的制造权限，玩家可以在指挥中心建造更多钻矿车。矿仓会自动和最近的钻矿塔建立联系，随后，钻矿塔会定期生成货车以向矿仓运输采集到的金属原料，金属原料也会在矿仓被转化为军费（即玩家的可用资金）。特别值得注意的是：如果玩家只有钻矿塔但是没有矿仓，那么所有的采矿作业都将停摆，也没有其他办法将金属原料转化为资金！
actor-televator =
    .description =
        转移或传送友方单位
        传送
    .name = 传送梯井节点
    .encyclopedia = 玩家可以在相连的传送梯井节点之间转移自己的部队：在玩家拥有两个或两个以上的传送梯井节点后，选中想要作为“出口”的节点后按右键，即可将该节点设置为“出口”；如果玩家想要变更“出口”，只需按照上述步骤重新设置另一个节点为“出口”即可。所有节点都需要电力才能正常运转，也都可以为“空间传送”支援能力充能。
    .teleportpower-name = 空间传送
    .teleportpower-description = 将选定范围内的单位传送到指定区域而无论两点的距离
actor-harbor =
    .description = 制造各类舰艇
    .name = 军港
    .encyclopedia = 军港是殖民地海军的生产和维护建筑，任意受损的友方舰艇都可以返回军港修整补给。考虑到殖民地星球的现实情况，玩家只能在浅水区建造军港。
actor-barrier =
    .description = 人造的地形障碍
    .name = 围墙
    .encyclopedia = 围墙是一种廉价而高效的基础工事，可以有效地阻挡部分枪炮火力，并阻滞敌方部队的行军。围墙在建造完毕后并不需要人员持续维护，因此任何残余的围墙都不会阻碍玩家达成“消灭所有敌人”这样的任务目标。
meta-gate =
    .description = 便于友方单位通过的人造地形障碍
    .name = 闸门
actor-hgate-encyclopedia = 玩家可以直接使用闸门替换已经建造完毕的围墙，也可以使用闸门来连接其他围墙或者闸门。只有友方单位可以随意通过闸门，而敌对单位将会被阻隔在闸门之外。通常来说，玩家可以利用闸门在本方防守严密的区域创造一些可通行区域。
actor-reconstructor =
    .name = 民用纳米重构机
    .captured-desc = 正常运转时，所有本方单位都获得自动修复的能力
    .capturable-desc = 占领并确保本建筑的运作，使本方所有单位获得自动修复的能力
    .encyclopedia = 纳米重构机是一种特殊的民用设施，玩家通常只能在少数殖民地行星上发现这一设施。殖民地当局会使用纳米重构技术来为殖民地民众提供医疗或者环保上的服务。玩家在占领任一纳米重构机之后，麾下所有的载具及其中的战斗人员都可以同时被纳米重构技术修复或治疗；除非玩家失去纳米重构机的控制权，或者无法为其提供充足的电力，否则玩家的单位将始终得益于纳米重构的恢复效果。
actor-extractor =
    .name = 民用钻矿机
    .captured-desc = 持续提供额外的资金收入
    .capturable-desc = 占领以获得额外的资金收入
    .encyclopedia = 各星球殖民地的民众也在尝试使用钻矿技术来获取当地的矿物原料和其他资源。尽可能多地占领民用钻矿机，并且说服他们的主管把利润划拨到我们的账户上。
actor-comlink =
    .name = 民用通讯中心
    .captured-desc = 获取定期揭示区域视野的能力
    .capturable-desc = 占领以获取定期揭示区域视野的能力
    .encyclopedia = 某些殖民地星球的居民也会自发建设他们的本地通讯卫星系统和雷达阵列，占领这些设施可以持续收集其作用范围内的各类通讯信号，以长期监视这块区域；如果能够持续为通信中心供电，那么就能通过雷达阵列和通讯卫星来截获选定区域的通讯和情报。当然，每次使用后，雷达和卫星需要一定时间来为下一次行动重新进行调整和定位。
    .radar-name = 雷达扫描
    .radar-description = 在一段时间内持续获得目标地区的视野，并揭示其中的隐形单位
actor-watchtower =
    .name = 民用瞭望塔
    .captured-desc = 获取周围地区的视野
    .capturable-desc = 将本方单位移动到瞭望塔周围以控制瞭望塔
    .encyclopedia = 瞭望塔是一座配备了诸多大型先进传感器和雷达阵列的通讯建筑，专门用来勘察并确认附近地区的各类地理和气象信息。玩家只需将麾下单位移动到瞭望塔附近，并确保周围没有其他敌对势力的单位，即可获取瞭望塔及其中设备与信息的控制权，而不必消耗工程师来占领。
actor-dropzone =
    .name = 雇佣军空投区
    .description = 接收来自星际雇佣军的空投单位
    .encyclopedia = 某些殖民地星球已经接通了星际雇佣军的佣兵服务，萬木工業和光明同调两家巨型企业都是雇佣军的忠实客户并且已经为任何可能的订单提前支付了费用。一旦玩家占领了一处空投区并保持对它的控制，那么每过一段时间都能够收到来自雇佣军的坦克支援——这些坦克都是由雇佣军自行设计并制造的！
actor-flagpost =
    .name = 军旗
    .encyclopedia = 军旗是一种特殊的地标，与特殊的胜利条件有关。占领并持续控制军旗指定时间的玩家将以“战略上胜利”赢得对局。
meta-vehicle-generic-name = 载具
meta-scrap =
    .name = 残骸
    .generic-name = 残骸
meta-plane-generic-name = 飞行器
meta-planehusk-generic-name = 飞行器残骸
meta-droppod-name = 空投舱
meta-helicopter-generic-name = 直升机
meta-building-generic-name = 建筑
meta-prop-generic-name = 建筑
meta-crate =
    .name = 工具箱
    .generic-name = 工具箱
meta-rock-name = 岩石
meta-tree-name = 树
meta-cactus-name = 仙人掌
meta-ship-generic-name = 舰艇
meta-cube =
    .name = 魔方
    .generic-name = 魔方
meta-wall-name = 围墙
actor-mpspawn-name = 玩家出生点
actor-light-name = 光源(不可见)
actor-camera-name = 镜头(获取视野)
actor-fountain-name = 水源
actor-mother2c-name = 母舰
actor-mother-name = 母舰基地
actor-rifleman =
    .description =
        泛用型机械化步兵
        配备一挺机关枪
        强势对抗：机械化步兵
        弱势对抗：载具、建筑
    .name = 机械化步枪兵
    .encyclopedia =
        机械化步枪兵是最基础最常规的机械化步兵。这种只需要一名士兵即可操作的微型地面载具不仅成本低廉，其模块化的制造和加工流程也相当高效，是当代最先进的步兵配套装备。机械化步兵有多种武装配置，适用于不同的战斗场景：加装机关枪模块，就能把这个单兵载具变成机械化步枪兵。
        得益于自身的体型优势，机械化步枪兵可以埋伏在诸如丛林、森林或者防御工事里；这种基本技术也没有什么专利可言，萬木工業和光明同调都可以大批量训练自己的机械化步枪兵。

        { actor-rifleman.description }

        所属方：通用
actor-rocketeer =
    .description =
        善于反装甲和防空的机械化步兵
        配备了地对地和地对空导弹发射器
        强势对抗：载具、飞行器
        弱势对抗：机械化步兵
    .name = 机械化导弹兵
    .encyclopedia =
        机械化导弹兵装备了导弹发射器模块，特别适合对抗那些装甲硬目标，比如坦克和飞行器；不过导弹并不容易命中或损伤其他机械化步兵。
        由于机械化导弹兵是一种高效反制敌方坦克的手段，几乎所有兵团都会配备一定数量的机械化导弹兵。

        { actor-rocketeer.description }

        所属方：光明同调
actor-mortar =
    .description =
        远程火力支援型机械化步兵
        装备一门模块化迫击炮
        强势对抗：机械化步兵、建筑
        弱势对抗：载具
    .name = 机械化迫击炮手
    .encyclopedia =
        为了解决传统迫击炮班组需要多名训练有素的士兵协同作战的问题，光明同调创造性地将迫击炮模块化，由此训练出了独有的机械化迫击炮手。
        机械化迫击炮所用的弹药为高爆弹，因此特别适合用来打击机械化步兵集群或者各类建筑；光明同调往往会出动这些迫击炮来压制一座仅由步兵守卫的小型前哨站。

         { actor-mortar.description }

        所属方：光明同调
actor-sniper =
    .description =
        超远程反步兵单位
        配备了狙击枪并可以在待命时隐形的机械化步兵
        强势对抗：机械化步兵
        弱势对抗：载具、建筑
    .name = 机械化狙击手
    .encyclopedia =
        机械化狙击手是一种足以令敌人闻风丧胆的强大兵种：模块化的超远程狙击枪可以轻易在远距离高效击杀任何机械化步兵；额外加装的隐形模块，更是让人胆战心惊。

        { actor-sniper.description }

        所属方：萬木工業
actor-flamer =
    .description =
        配备模块化火焰发射器的机械化近战步兵
        强势对抗：机械化步兵、建筑
        弱势对抗：载具
    .name = 机械化火焰兵
    .encyclopedia =
        模块化的火焰喷射器不仅能加装在机械化步兵身上，还能以惊人的效率摧毁一切拦路的敌方步兵和建筑。
        遗憾的是，由于不得不牺牲一些装甲区来适配那些高危燃烧剂储存罐，因此机械化火焰兵的生存性和攻击距离都远低于其他步兵。

        { actor-flamer.description }

        所属方：光明同调
actor-technician =
    .description =
        支援型步兵，战地工程师
        渗透或占领敌方建筑
        维修友方机械化步兵

        无武装
    .name = 机械化工兵
    .encyclopedia =
        机械化工兵虽然没有配备任何武器，但在战斗中的表现并不逊于其他步兵。
        机械化工兵可以占领敌方或中立建筑，使它们转而为本方效力：最常见的用法是占领敌方的钻矿塔。
        机械化工兵也可以充当"医疗兵"，在战场上为其他友方机械化步兵提供回复。

        { actor-technician.description }

        所属方：通用
actor-broker =
    .description =
        支援型机械化步兵
        利用金融和计算机技术干扰并盗取股票市场的收益
        也能够从敌方指挥中心和矿仓的公司财务系统窃取资金
        无武装
    .name = 机械化经纪人
    .encyclopedia =
        机械化经纪人是一种极其特殊的无武装机械化步兵，其操作员必须具备足够的金融业和计算机技能。这些经纪人可以借助机械化模块内的设备，通过网络攫取股票、基金、期货等交易市场的利润。他们也可以利用模块内的网络攻击配件来破坏敌方指挥中心或矿仓的防火墙，从而将敌方财务系统内的军费转入自家账户。

        { actor-broker.description }

        所属方：通用
actor-jetpacker =
    .description =
        精英级的机械化步兵
        配备了重机枪模块和喷气背包模块
        强势对抗：机械化步兵、轻型载具、飞行器
        弱势对抗：装甲载具、建筑
    .name = 喷气式机械化步枪兵
    .encyclopedia =
        喷气式机械化步兵是机械化步兵的终极形态，由第三方的独立实验室研发设计并贩售，因此萬木工業和光明同调都有该技术的使用权。这一兵种能够有效对抗其他机械化步兵、轻型载具和飞行器，而且使用特殊燃料的喷气背包可以让他们长时间保持滞空，从而远离地面上的各种威胁。

        { actor-jetpacker.description }

        所属方：通用
actor-blaster =
    .description =
        自行式遥控地雷
        靠近敌方单位后爆炸
    .name = 爆破者诡雷
    .encyclopedia =
        唯一一种无需载员操作的机械化步兵——爆破者诡雷直接由指挥中心遥控，并且在贴近敌方单位后自爆。因为不需要额外装甲来保护乘员，因此爆破者诡雷的生存性比其他机械化步兵要差一些，也只适合来破拆敌方建筑，从而干扰敌方的运营。

        { actor-blaster.description }

        所属方：萬木工業
actor-shocker =
    .description =
        快速支援型单位
        装备的单兵电光炮模块还能打击空中单位
        强势对抗：载具、飞行器
        弱势对抗：机械化步兵
    .name = 机械化电击兵
    .encyclopedia =
        机械化电击兵的电光炮虽然体型较小，但功率却超乎想象，并且能够对各种硬目标和飞行器造成客观的伤害。遗憾的是，为了保护机械化电击兵自身的安全，电击炮被设计成“对机械化步兵尽可能无害”，因此他们反而不擅长独自对抗其他机械化步兵。

        { actor-shocker.description }

        所属方：萬木工業
meta-minipod =
    .name = 民用机械化载人模块
    .generic-name = 平民
    .encyclopedia =
        机械化载人模块这一技术自然也有它的民用版本——民用交通工具。
        无武装

        所属方：通用/无法建造
actor-lamppost-name = 路灯
actor-sparklamp-name = 路灯
actor-streetlamp1-name = 路灯
actor-pyramid-name = 金字塔
actor-pyramid2-name = 小型金字塔
actor-obelisk-name = 方尖塔
actor-prop1-name = 民用建筑
actor-prop2-name = 民用建筑
actor-prop3-name = 民用建筑
actor-prop4-name = 民用建筑
actor-prop5-name = 民用建筑
actor-prop6-name = 民用建筑
actor-tanktrap-name = 反坦克拒马
actor-prop9-name = 民用灯塔
actor-prop10-name = 民用灯塔
actor-prop13-name = 民用建筑
actor-prop14-name = 民用建筑
actor-prop16-name = 民用建筑
actor-crane-name = 民用起重机
actor-windturbine-name = 民用风力发电机
actor-electricpad-name = 民用太阳能电池板
actor-rail-name = 铁轨
actor-misc1-name = 杂物
actor-lightboat =
    .name = 轻型快艇
    .generic-name = 舰艇
    .description =
        轻型多用途舰艇
        强势对抗：机械化步兵、飞行器、舰艇
        弱势对抗：载具
    .encyclopedia =
        轻型快艇是一种专用于快速突击和近海巡逻的小型舰艇，同时也是玩家军备库中机动性最强的舰艇（但牺牲了一定的生存能力）。轻型快艇以一门重机枪作为武装，并且配备了一座防空炮以应对空中威胁。

        { actor-lightboat.description }

        所属方：萬木工業
actor-patrolboat =
    .name = 轻型巡逻艇
    .generic-name = 舰艇
    .description =
        轻型多用途舰艇
        强势对抗：机械化步兵、飞行器、舰艇
        弱势对抗：载具
    .encyclopedia =
        轻型巡逻艇是一种专用于快速突击和近海巡逻的小型舰艇，同时也是玩家军备库中机动性最强的舰艇（但牺牲了一定的生存能力）。轻型巡逻艇以一门重机枪作为武装，并且配备了一座防空炮以应对空中威胁。

        { actor-patrolboat.description }

        所属方：光明同调
actor-mercboat =
    .name = 雇佣军快艇
    .generic-name = 舰艇
    .description =
        星际雇佣军的炮艇
        强势对抗：载具、舰艇
        弱势对抗：机械化步兵
    .encyclopedia =
        星际雇佣军为他们自己的舰艇研发了一种特殊的舰炮和炮弹，这使得星际雇佣军的炮舰特别善于对抗其他水面舰艇或者陆上载具。

        { actor-mercboat.description }

        所属方：无法建造
actor-torpedoboat =
    .name = 鱼雷艇
    .generic-name = 舰艇
    .description =
        配备双联装鱼雷发射器的轻型舰艇
        强势对抗：舰艇
        弱势对抗：地面单位、飞行器
    .encyclopedia =
        鱼雷艇的武器是一座双联装鱼雷发射器，因此特别善于独自对付各式各样的舰艇。由于舰上并无其他武装，因此鱼雷艇无法攻击任何地面目标。

        { actor-torpedoboat.description }

        所属方：萬木工業
actor-submarine =
    .name = 潜艇
    .generic-name = 潜艇
    .description =
        潜伏于水面之下的舰艇猎手
        强势对抗：舰艇
        弱势对抗：地面单位、飞行器
    .encyclopedia =
        潜艇大部分时间都潜伏在水面之下，以机动性换取了“隐形”能力。潜艇配备的鱼雷能够对大部分舰艇造成毁灭性伤害，但无法威胁到地面上的目标。

        { actor-submarine.description }

        所属方：光明同调
actor-railgunboat =
    .name = 激光炮巡洋舰
    .generic-name = 舰艇
    .description =
        以激光炮作为舰船主炮的重巡洋舰
        强势对抗：机械化步兵、载具、舰艇、建筑
        弱势对抗：飞行器
    .encyclopedia =
        激光炮巡洋舰是一种几乎能够应付一切状况的大型水面舰艇，它所装备的激光炮对建筑有毁灭性的杀伤力。不过这种重巡洋舰对空中威胁毫无还手之力。

        { actor-railgunpod.description }

        所属方：光明同调
actor-lightningboat =
    .name = 电光炮巡洋舰
    .generic-name = 舰艇
    .description =
        以电光炮作为舰船主炮的重巡洋舰
        强势抵抗：机械化步兵、载具、舰艇、建筑
        弱势对抗：飞行器
    .encyclopedia =
        电光炮巡洋舰是一种几乎能够应付一切状况的大型水面舰艇，它所装备的电光炮对建筑有毁灭性的杀伤力。不过这种重巡洋舰对空中威胁毫无还手之力。

        { actor-lightningboat.description }

        所属方：萬木工業
actor-boomer =
    .name = 弹道导弹潜艇
    .generic-name = 潜艇
    .description =
        装备长程弹道导弹的攻城潜艇
        强势对抗：机械化步兵、载具、舰艇、建筑
        弱势对抗：飞行器
    .encyclopedia =
        在光明同调指挥官的眼中，没有什么攻城武器比潜射式弹道导弹更隐秘、更强大，于是弹道导弹潜艇应运而生：这些潜艇可以在潜入敌方港口，发射超远程弹道导弹袭击敌方基地。

        { actor-boomer.description }

        所属方：光明同调
actor-slcm-name = 弹道导弹
actor-carrier =
    .description =
        通过弹射大量无人舰载机发动攻击的攻城舰
        强势对抗：机械化步兵、载具、舰艇、建筑
        弱势对抗：飞行器
    .name = 无人机母舰
    .encyclopedia =
        无人机母舰是萬木工業军备库中的“水上巨无霸”，可以一次性弹射三架无人舰载机从远处打击敌方关键目标。和传统航母不同的是，无人机母舰自带一座无人机工厂，一旦有舰载机在行动中被击坠，母舰上的工厂就会立刻开工以补足损失。不过，无人舰载机携带的弹药有限，因此必须在完成攻击波次后返回母舰进行补给。

        { actor-carrier.description }

        所属方：萬木工業
actor-ferry =
    .name = 装甲渡轮
    .generic-name = 运输舰
    .description =
        军用装甲运输船
        可以运送机械化步兵
        无武装
    .encyclopedia =
        装甲渡轮是殖民地的军用运输船，可以一次性运送大量货物或机械化步兵。装甲渡轮的动力系统会根据各殖民地星球的不同水域状况而调整，因此通常航速较慢，但舰体本身具有较强的耐久度，足以抵御常见的军事威胁或者自然灾害。装甲渡轮的“防搁浅系统”可以确保自身在抢滩登陆后从滩头安全离开。

        { actor-ferry.description }

        所属方：通用
actor-mineship =
    .name = 布雷舰
    .generic-name = 舰艇
    .description =
        在指定水域部署智能水雷
        智能水雷只会在敌方舰艇触雷时自动引爆
        智能水雷不会主动伤害友方舰艇
        可以探测敌方水雷
        无武装
    .encyclopedia =
        布雷舰部署的智能水雷可以自动识别敌我舰艇，在敌方舰艇触雷时自动引爆，但不会主动伤害友方舰艇。水雷也可以被指挥中心手动引爆。布雷舰搭载的探测设备可以在小范围内自动探测敌方水雷。为一次性携带尽可能多的水雷，布雷舰本身没有配备任何武装，且每次耗尽水雷后必须返回军港进行补给。

        所属方：通用
actor-mbt =
    .name = 主战坦克
    .description =
        泛用型反装甲战车
        强势对抗：载具
        弱势对抗：机械化步兵
    .encyclopedia =
        主战坦克专用于反制敌方装甲载具，尤其是敌方坦克。坦克内搭载的瞄准设备可以让坦克实现移动时开火并命中敌方目标。主战坦克搭载的传统穿甲弹对建筑效果一般，但坦克集群可以通过数量弥补不足，从而迅速摧毁敌方各类设施。

        { actor-mbt.description }

        所属方：通用
actor-aatank =
    .description =
        以防空导弹替换反坦克主炮的装甲战车
        无法攻击地面目标
        强势对抗：飞行器
        弱势对抗：地面单位
    .name = 防空坦克
    .encyclopedia =
        虽然防空坦克的火力略逊于固定式的防空建筑，但可以主动追击那些试图逃离防空圈的敌方飞行器。值得注意的是，防空坦克配备的防空系统无法攻击任何地面单位。

        { actor-aatank.description }

        所属方：光明同调
actor-aatank2 =
    .description =
        以高射电光炮替换反坦克主炮的装甲战车
        无法攻击地面目标
        强势对抗：飞行器
        弱势对抗：地面单位
    .encyclopedia =
        虽然防空坦克的火力略逊于固定式的防空建筑，但可以主动追击那些试图逃离防空圈的敌方飞行器。值得注意的是，防空坦克配备的防空系统无法攻击任何地面单位。

        { actor-aatank2.description }

        所属方：萬木工業
actor-apc =
    .name = 装甲运兵车
    .description =
        一次性可以运载至少5名机械化步兵
        运兵车内的机械化步兵可以通过射击孔对外开火
    .encyclopedia =
        装甲运兵车是一种重型运输坦克。为了一次性运输并保护运载的机械化步兵或各类军用物资，设计师们决定用射击孔和更为厚重的护甲取代了传统的车载自卫式武器，这样车内的士兵就可以运用自身携带的武器来打击外部的敌人。虽然充当“移动碉堡”战斗力仍难以匹敌常规的主战坦克，但若是情势所逼，装甲运兵车在防御殖民地时仍是廉价且有效的肉盾型单位。

        所属方：通用
actor-artillery =
    .name = 自行火炮
    .description =
        长程炮兵
        强势对抗：机械化步兵、建筑
        弱势对抗：载具
    .encyclopedia =
        自行火炮可以在极远的距离发射高爆弹轰击敌方建筑或步兵集群，对其他类型的目标也能造成一定的伤害。在尝试进攻敌方基地之前，总是应该先尝试使用自行火炮摧毁敌方的防御建筑并压制其防御部队。

        { actor-artillery.description }
actor-radartank =
    .description =
        专用于侦测隐形单位的支援型坦克
        可以部署以增加侦测范围
        无武装
    .name = 侦察坦克
    .encyclopedia =
        侦察坦克是一种常规而通用的支援型载具，往往被用来侦察或侦测隐形单位。侦察坦克还可以通过部署指令转变为一个简易雷达站，虽然失去了机动性，但可以进一步扩大侦测和侦察范围。遗憾的是，为了搭载这些侦察设备，侦察坦克无法再配备任何武器装备。

        所属方：通用
actor-repairtank =
    .name = 后勤维修车
    .generic-name = 坦克
    .description = 可以维修其他载具的载具
    .encyclopedia =
        后勤维修车是一种高机动性的工程车辆，虽然没有任何直接战斗力，却可以在战场上对各类友方载具开战修复或维护工作。

        所属方：通用
actor-minelayer =
    .description =
        在指定区域部署智能地雷
        智能地雷只会在敌方地面单位触雷时自动引爆
        智能地雷不会主动伤害友方地面单位
        可以探测敌方地雷
        无武装
    .name = 布雷车
    .encyclopedia =
        布雷车部署的智能地雷可以自动识别敌我单位，在敌方单位触雷时自动引爆，但不会主动伤害友方单位。地雷也可以被指挥中心手动引爆。布雷车搭载的探测设备可以在小范围内自动探测敌方地雷。为一次性携带尽可能多的地雷，布雷舰本身没有配备任何武装，且每次耗尽地雷后必须返回贸易中心进行补给。

        所属方：通用
actor-railguntank =
    .name = 激光炮坦克
    .generic-name = 坦克
    .description =
        以轨道炮和特殊弹药武装自身的高级主战坦克
        强势对抗：地面单位
        弱势对抗：飞行器
    .encyclopedia =
        激光炮坦克是一种终极决战兵器，它所装备的强力激光炮可以高效杀伤各类地面目标，而厚重的装甲则可以抵御大量敌方炮火。

        { actor-railguntank.description }

        所属方：光明同调
actor-lightningtank =
    .description =
        以电光炮替换传统反坦克炮的高级主战坦克
        强势对抗：地面目标
        弱势对抗：飞行器
    .name = 电光炮坦克
    .generic-name = 坦克
    .encyclopedia =
        电光炮坦克是一种终极决战兵器，它所装备的特大功率电光炮可以轻易摧毁各类地面目标，而厚重的装甲则可以抵御大量敌方炮火。

        { actor-lightningtank.description }

        所属方：萬木工業
actor-stealthtank =
    .description =
        配备车载导弹发射架和小型隐形力场发生器的新型坦克
        强势对抗：载具、建筑
        弱势对抗：机械化步兵
    .name = 隐形坦克
    .encyclopedia =
        隐形坦克是当代隐形技术的最先进成果之一。与磁能坦克的大杀四方不同，隐形坦克就像是神出鬼没的刺客，在无情收割孤立的敌方建筑或者落单载具后扬长而去。值得一提的是，虽然装备的是“反坦克导弹”，但这种导弹对抗建筑的效率甚至比电击炮坦克还要高。

        { actor-stealthtank.description }

        所属方：萬木工業
actor-merctank =
    .name = 雇佣军主战坦克
    .generic-name = 坦克
    .description =
        泛用型反装甲战车
        强势对抗：载具
        弱势对抗：机械化步兵
    .encyclopedia =
        雇佣军主战坦克由星际雇佣军自行设计研发并制造，是星际雇佣军的招牌单位。萬木工業和光明同调在占领各地的雇佣军空投区后，可以在空投区获得这些坦克以“行使合约上的权利”。与其他大部分坦克不同的是，雇佣军主战坦克的炮塔是固定的，无法旋转...

        { actor-merctank.description }

        所属方：星际雇佣军（通过雇佣军空投区获得，无法建造）
actor-ecmtank =
    .name = 电战坦克
    .generic-name = 电战坦克
    .description =
        专用于电子对抗的支援型战车
        使敌方载具瘫痪一小段时间
        自动干扰来袭的导弹
        无常规武装
        强势对抗：载具
        弱势对抗：飞行器
    .encyclopedia =
        电战坦克是电子对抗战的产物，这种坦克没有配备任何常规武装，但这些看似无害的电战设备取得的战果，往往是常规武器所不能及的。
        萬木工業研发的电战坦克可以发射大量干扰电波以破坏敌方载具的通讯或操作系统，从而使其在一段时间内陷入“瘫痪”状态，无法正常战斗；车载的大功率制导干扰系统能够有效妨碍来袭的敌方导弹，偏转这些导弹的攻击方向，从而保护友方单位。

        所属方：萬木工業
actor-dualartillery =
    .name = 改进型自行火炮
    .description =
        更先进的双炮管自行火炮
        强势对抗：地面单位
        弱势对抗：飞行器
    .encyclopedia =
        改进型自行火炮目前仍处于理论和初步试验阶段，因此只有极少数原型车被投入实战。与常规自行火炮相比，改进型自行火炮的体量和火力投射量翻了一倍；由于炮塔空间和炮管材质的提升，改进型自行火炮的炮弹口径更大、装药更多，因此对很多硬目标也能造成显著损伤。

        { actor-dualartillery.description }

        所属方：无法建造
actor-builder =
    .description =
        可以部署为前哨站
        前哨站可以拓展建筑范围
        失去指挥中心后，可以将前哨站升级为新的指挥中心
        无武装
    .name = 工程车
    .encyclopedia =
        工程车虽然没有任何战斗力，但却可以协助玩家建立分基地——前哨站。前哨站可以提供建筑范围，并且玩家在失去指挥中心后，可以将一座前哨站升级成指挥中心，从而重新建立战场控制。

        所属方：通用
actor-collector-name = 采集车
actor-miner =
    .description =
        在金属矿脉上部署为钻矿塔以采集金属原料
        钻矿塔可以被重新打包回钻矿车
        无武装
    .name = 钻矿车
    .encyclopedia =
        钻矿车是一种特殊的工程车，其中携带了全套钻矿建筑模块，可以在金属矿脉上转变为钻矿塔，从而采集这片矿脉蕴藏的金属原料。
        钻矿塔自带一辆货车，用来将采集到的资源送往矿仓以转化为军费。
        矿脉枯竭后，玩家可以选择将钻矿塔重新打包成钻矿车，寻找新的矿脉重新开展采矿作业。

        所属方：通用
actor-missiletank =
    .name = 导弹坦克
    .generic-name = 坦克
    .description =
        配备车载导弹发射器的高机动性坦克
        强势对抗：载具、建筑
        弱势对抗：机械化步兵
    .encyclopedia =
        导弹坦克是车载导弹发射器的最大受益者之一。与轨道炮坦克的大杀四方不同，导弹坦克特别善于利用自己绝佳的机动性在敌人的基地或阵线后方来回穿梭并袭扰毫无防备的载具或建筑。值得一提的是，虽然装备的是“反坦克导弹”，但这种导弹对抗建筑的效率甚至比轨道炮坦克还要高。

        { actor-missiletank.description }

        所属方：光明同调
actor-hackertank =
    .description =
        专用于电子对抗的支援型战车
        控制目标敌方载具
        干扰范围内的敌方雷达站，使之无法提供战术地图
        部署后启用电磁屏障，阻挡敌方通过雷达获取此处的信息
    .name = 电战战车
    .encyclopedia =
        电战战车是电子对抗战的产物，这种战车没有配备任何常规武装，但这些看似无害的电战设备取得的战果，往往是常规武器所不能及的。
        光明同调研发的电战战车可以攻击并破坏敌方指挥系统的防火墙，以实现劫持敌方载具的指令系统的目的，从而向其车长持续播发“假命令”来长期控制该载具的行动；这种控制效果是永久的，除非电战战车被摧毁，或者变更了劫持目标。电战战车搭载的电磁干扰设备可以干扰并屏蔽一定范围内的敌方雷达和卫星的通讯与信号，进一步影响敌方获取战场情报的能力；不过这种干扰和屏蔽仅对电子设备有效，无法阻止敌方单位以“目力”获取视野内的信息。

        所属方：光明同调
actor-buggy =
    .name = 狂野冲锋车
    .generic-name = 冲锋车
    .description =
        轻型反步兵载具，机动性较高
        强势对抗：机械化步兵
        弱势对抗：载具、建筑
    .encyclopedia =
        狂野冲锋车是一种反人员的快速轻载具。即使面对一群机械化步兵，它也能够依靠装备的重型机关枪潇洒清场。狂野冲锋车的机动性不如加特林摩托，但机关炮被放置在炮塔内，可以在行进时随意向四周开火。

        { actor-buggy.description }

        所属方：光明同调
actor-bike =
    .name = 加特林摩托
    .generic-name = 摩托
    .description =
        轻型反步兵载具，机动性极高
        强势对抗：机械化步兵
        弱势对抗：载具、建筑
    .encyclopedia =
        加特林摩托是一种反人员的快速轻载具。即使面对一群机械化步兵，它也能够依靠装备的重型加特林机关炮潇洒清场。加特林摩托的机动性远超狂野冲锋车，不过机关炮的底座是固定的，无法在行进时随意向四周开火。

        { actor-bike.description }

        所属方：萬木工業
actor-tanker1 =
    .description =
        将运载的原料送往矿仓
        无武装
    .name = 满载的货车
actor-tanker2 =
    .description =
        在钻矿塔装载采集到的原料
        无武装
    .name = 空载的货车
    .encyclopedia =
        货车是一种资源运输载具，没有装备任何武器。货车会不停地往返于钻矿塔和矿仓以运送采集到的各类金属原料。

        所属方：通用
actor-cvit =
    .description =
        将资金转移给其他友方玩家
        无武装
    .name = 装甲运钞车
    .encyclopedia =
        装甲运钞车可以一次携带大量资金前往盟友基地，从而在经济和道义上协助你的盟友。不过装甲运钞车没有任何武装，要小心那些半路打劫的。

        所属方：通用
actor-mothership =
    .name = 空天母舰
    .description =
        配备高速激光炮和大量防空舰载机的巨型星际旗舰
        同一玩家同一时间只能拥有一个
        强势对抗：一切单位
        弱势对抗：无
    .encyclopedia =
        当萬木火星殖民地着手研发"航天战列舰"之后，光明同调意识到自己也得有所行动才能在老对手面前保持自身的竞争力——空天母舰，作为航天战列舰的反制措施，由此诞生。
        空天母舰可谓是“空中之城”：2500人左右的舰员分散在母舰的各个舱室和部门，舰上甚至还有科技实验室、军工研究院等科研设施。空天母舰的两座炮塔上安装有威力巨大的等离子舰炮，可以轻易摧毁任何地面目标；如果这还不够的话，母舰内置的大型无人机工厂和机库可以制造兵容纳更多无人舰载机，这些无人机可以随时发动暴风骤雨般的攻势以压制敌方的反击。

        { actor-mothership.description }

        所属方：光明同调
actor-mothership-husk =
    .name = 空天母舰残骸
actor-drone2 =
    .name = 空天母舰舰载机
actor-battleship =
    .name = 航天战列舰
    .description =
        装备四门超大口径舰炮以执行轰炸和火力压制任务的巨型星际旗舰
        同一玩家同一时间只能拥有一个
        强势对抗：地面单位
        弱势对抗：飞行器
    .encyclopedia =
        航天战列舰上有约1200名舰员，无愧为“萬木工業总旗舰”这样的称号。萬木工業火星殖民地花费了5年时间酝酿，又用了10年时间进行开发、设计、测试，并最终在第15年完成了航天战列舰的建造。
        航天战列舰如今已经正式列装萬木工業的军队，成为预备役中的一员。为了最大化航天战列舰的轰炸能力，它的两座炮塔被设计为“同步开火”，每次主炮齐射几乎都能在瞬间摧毁一整个前哨站。不过，航天战列舰继承了它水上前辈们的弱点——无法有效应对来自中小型飞行器的威胁。

        { actor-battleship.description }

        所属方：萬木工業
actor-battleship-husk =
    .name = 航天战列舰残骸
actor-landmine-name = 智能地雷
actor-watermine-name = 智能水雷
robbed-notification = 资金遭到窃取
rob-notification = 已窃取资金
