## 09月25日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 19 条

---

## 要点汇总

- 产业动态：Odyssey 发布 Agora-2：20 个人与智能体共享的多智能体世界模型; Cognition 年化收入破 10 亿美元，Devin 上市不到两年; Lovable 年化收入破 6 亿美元，平台创建应用月访问近 10 亿; Google、OpenAI 与 Anthropic 据报推进自设 AI 安全标准机构; 清华与无问芯穹联合开源具身智能调度平台 RLark
- 算力追踪：Akamai 与 Anthropic 签 116 亿美元七年协议，另发 5% 股权认股权证; Crusoe 放弃 12.5 亿美元 Boom 燃气轮机采购计划; Google Project Suncatcher：把 TPU 送上太空测试; Oracle 援引不可抗力条款以应对新墨西哥数据中心延期
- 初创&融资：TypeSafe AI 据传洽谈十亿美元级融资，估值或达 100 亿美元; AI 生物医药公司 Basecamp Research 完成 1.4 亿美元 C 轮融资; 人机混编团队消息平台 Ando，融资 2,000 万美元; 机器人开发平台 Feather 主打面向软件工程师的可定制方案，售价 3 万美元; 高通宣布收购机器人软件公司 PickNik
- 研究关注：SpeakerMem-R1：多方对话的说话人中心双轨记忆，登顶 EverMemBench 榜单; JiT Memory：智能体记忆推迟到读取时再整理
- X讨论：Chelsea Finn 团队提出机器人后训练方案 EXPO-FT：19 分钟在线交互练到 30/30; Terminal-Bench-Science 开放贡献：真实科研工作流基准向领域专家征集任务; Epoch AI：华为 AI 算力到 2030 年将明显进步，但难以追平 NVIDIA

---

## 📖 详细参考

### 产业动态
**Odyssey 发布 Agora-2：20 个人与智能体共享的多智能体世界模型**
- Odyssey 发布下一代多智能体世界模型 Agora-2 的可玩研究预览：在实时生成的共享世界模拟中支持**最多 20 个人类与智能体**（为 Agora-1 的 5 倍），并从单一环境扩展到多环境、更复杂的交互与更长时程行为。模型基于 Diablo II 的捕捉数据训练，充当「学习到的游戏引擎」：模拟模型预测参与者联合动作如何改变共享状态，渲染模型再以流式像素为每个参与者生成各自视角。团队还用 RL 训练智能体在其中追逐对手、避障与脱困，并计划让智能体的经验反哺世界模型本身。
  > 💡 把世界模型从「单智能体的想象」升级为「多智能体的共享现实」，直接命中智能体协作与对抗研究的刚需；人类与 AI 在同一模拟中互动，也为研究 AI-AI 勾结、网络攻击这类高风险行为提供了低风险试验场。
   - 来源: [Odyssey](https://odyssey.systems/introducing-agora-2) | [@odysseyml](https://x.com/odysseyml/status/2103146841378586820)

**Cognition 年化收入破 10 亿美元，Devin 上市不到两年**
- Cognition 宣布年化收入 run rate 突破 **10 亿美元**，距 AI 工程师产品 Devin 全面上线不到两年。Devin 目前与 GE Aerospace、Rivian、Rohlik、Exa 等公司的工程团队并肩工作。Cognition 于 2024 年 1 月创立，出发点是「世界需要的软件远多于它能建造的」——从银行、车企到政府，每家公司要建的东西都远超其工程产能。
  > 💡 AI 编程公司率先跑出 10 亿美元级收入，验证的是「AI 工程师」而非「AI 补全」的商业模式；当软件产能本身成为可采购的商品，传统 IT 外包与人力扩充的预算会持续向这一类产品迁移。
   - 来源: [Cognition](https://cognition.com/blog/1b-run-rate) | [@cognition](https://x.com/cognition/status/2103500168951955718)

**Lovable 年化收入破 6 亿美元，平台创建应用月访问近 10 亿**
- Lovable 联合创始人 Fabian Hedin 在 HumanX 峰会宣布，公司年化收入突破 **6 亿美元**，6 月时约为 5 亿。公司称三分之二的 Fortune 500 企业有人在用其产品，客户包括 Microsoft、NVIDIA 与 Deutsche Telekom；平台上用户创建的应用合计每月吸引**近 10 亿次访问**，比 Lovable 站点本身高一个量级。Lovable 在八个月内完成两轮共逾 7 亿美元融资，8 月那轮估值 **133 亿美元**。
  > 💡 「输出的是产品而非代码」的定位让 Lovable 把 vibe coding 从极客玩具做成企业工具；托管应用月访问近 10 亿说明价值正从生成环节向托管、部署与分发环节沉淀，这层网络效应是纯代码生成工具不具备的。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/24/lovables-annualized-revenue-crosses-600m-as-vibe-coding-takes-off/)

**Google、OpenAI 与 Anthropic 据报推进自设 AI 安全标准机构**
- Google、OpenAI 与 Anthropic 正在推动一项计划，三方拟自行成立一个新的聚焦 AI 安全的标准化机构，而不依靠政府监管，并希望在今年底或 2027 年初正式发布。据知情人士透露，三家公司暂定将该自律组织命名为 Standards Authority for Frontier AI。该工作组部分成员曾考虑过一批知名人士出任 CEO，并已接触前风险投资人和特朗普政府前 AI 政策顾问 Sriram Krishnan 询问其意向。
  > 💡 三大模型厂商联合设立自律标准机构，是在监管节奏滞后时的另一种秩序供给尝试，但同时也将关键合规定义权进一步集中到头部公司手中。
   - 来源: [The Information](https://www.theinformation.com/articles/google-openai-anthropic-ai-safety-group-takes-shape)

**清华与无问芯穹联合开源具身智能调度平台 RLark**
- 清华大学与无问芯穹联合发布并开源具身智能平台 RLark。该平台的目标是为具身机群提供统一的调度与协同能力，使多个机器人能够像 GPU 一样被集中分配任务。
  > 💡 把机器人集群调度类比 GPU 调度，意味着具身智能正在从单机演示走向算力化、批量化的基础设施阶段。此类调度平台的成熟度，将直接决定具身智能能否进入规模化商用的临界点。
   - 来源: [PaperWeekly](https://mp.weixin.qq.com/s?__biz=MzIwMTc4ODE0Mw%3D%3D&mid=2247723184&idx=1&sn=79b268abe0ff19a265e23d184b93afbc)

### 算力追踪
**Akamai 与 Anthropic 签 116 亿美元七年协议，另发 5% 股权认股权证**
- Akamai 宣布与 Anthropic 达成为期七年的 **116 亿美元**合同承诺，用 Akamai Cloud 的分布式基础设施支持 Anthropic 快速增长的 CPU 工作负载；协议含最多追加 90 亿美元、总承诺约 **200 亿美元**的扩展空间。作为深度绑定，Akamai 向 Anthropic 发行了最高约 **5%** 普通股（转换后）的认股权证（行权价 111.33 美元），其中约 2% 随本次承诺归属，其余部分按每追加 30 亿美元采购解锁约 1%。本次承诺对应资本开支估计约 55 亿美元，Akamai 2026 年将增加约 17 亿美元开支以提前锁定内存等关键供应链。
  > 💡 用股权换订单的「云厂认股权证」结构，标志着 AI 算力军备竞赛进入相互绑定期；Anthropic 一边洽谈自建 TPU 园区、一边锁定分布式 CPU 云，说明推理侧的多样化算力组合已是头部模型公司的标准动作。
   - 来源: [Akamai](https://www.ir.akamai.com/news-releases/news-release-details/akamai-announces-116-billion-multi-year-agreement-anthropic)

**Crusoe 放弃 12.5 亿美元 Boom 燃气轮机采购计划**
- 据报道，AI 数据中心公司 Crusoe 终止采用 Boom Supersonic 固定式电站：原协议为 **12.5 亿美元采购 29 台 42MW Superpower 燃气轮机**，首批原定 2027 年交付。Boom CEO Blake Scholl 确认交易告吹，原因是轮机已不属于 Crusoe 在 Abilene 等园区近期主力供电组合；Boom 明年仍将向其他站点交付约 250MW，目标 2028 年达到 1GW。Crusoe 表态将在轮机、风电、光伏、电池与电网间按站点灵活选型，其在 Abilene 为 OpenAI/Oracle 建设的 1.2GW 园区由电网供电。
  > 💡 12.5 亿美元首发客户流失说明「新式燃气轮机」的量产节奏跟不上 AI 数据中心的建设速度，电网+储能+传统燃机的混合组合仍是当前主流；对指望用电站利润反哺超音速客机研发的 Boom 是实质性挫折。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/25/crusoe-abandons-1-25b-plan-to-use-boom-turbines-at-ai-data-centers/)

**Google Project Suncatcher：把 TPU 送上太空测试**
- Google CEO Sundar Pichai 宣布 Project Suncatcher 搭乘 SpaceX Transporter-18 任务发射，测试与卫星公司 Planet 合作建造的原型卫星，验证 **TPU 能否在太空环境中存活并运行**。
  > 💡 星载 AI 推理若跑通，遥感与通信卫星可以把「采集-回传-地面处理」压缩为「在轨直接出结果」，对 Planet 这类地球观测公司是结构性降本；TPU 上天意味着推理算力的部署边界开始突破地面数据中心。
   - 来源: [@sundarpichai](https://x.com/sundarpichai/status/2103209164072010051)

**Oracle 援引不可抗力条款以应对新墨西哥数据中心延期**
- Oracle 将代 OpenAI 租赁一座位于新墨西哥州的数据中心，并向该项目的开发商发出通知，主张若项目延期持续，其有权依据合同暂停付款。据 Bloomberg 报道，Oracle 在通知中援引了“不可抗力”条款。该数据中心原定服务于 OpenAI 的算力需求，项目延误正给 Oracle 带来成本压力。
  > 💡 OpenAI 的算力扩张链条已不再只是 GPU 采购问题，物理基础设施的工期与合同风险正在传导至云服务商，并开始以正式法律条款的方式显性化。
   - 来源: [The Information](https://www.theinformation.com/briefings/oracle-invokes-force-majeure-aim-protect-data-center-cost-overruns)

### 初创&融资
**TypeSafe AI 据传洽谈十亿美元级融资，估值或达 100 亿美元**
- 据报道，开发新型模型 Jev 的初创公司 TypeSafe AI 已开始与投资人就一轮规模约 10 亿美元或更高的融资进行接洽，部分匿名投资人提出以不低于 100 亿美元的估值参与。该公司此前一周才宣布完成 4000 万美元融资，按 PitchBook 数据当时估值约为 2 亿美元。在公司周三于旧金山举办的 AI Agenda Live 大会上，至少两位发言嘉宾主动提及 Jev，NVIDIA HPC 高级总监 Dion Harris 在肯定其速度的同时也指出了模型的局限。
  > 💡 在不到一周内估值从 2 亿跃升到 100 亿的量级，体现的是硅谷资金对差异化模型叙事的稀缺性溢价，但融资条款未公开意味着这一估值更多是意向试探而非市场出清价。
   - 来源: [The Information](https://www.theinformation.com/articles/jev-fervor-leads-talk-big-valuation-boost)

**人机混编团队消息平台 Ando，融资 2,000 万美元**
- Sara Du 创立的 Ando 走出隐身，推出为人类与 AI 智能体共同设计的团队消息平台，直接对标 Slack：智能体拥有独立身份和收件箱，可自行浏览并加入频道、未被 @ 也能参与对话，判断有事需要同步时可主动私信人类；应用还支持频道、群聊与可被智能体查看转写的实时通话。Ando 同步宣布完成 **2,000 万美元 pre-seed 与种子轮**，Accel、Index Ventures、Emergence 投资，目前服务 15 个国家的软件、地产与金融客户。
  > 💡 「智能体是团队参与者而非可安装的应用」这一产品假设，指向协作工具的下一次重构：当执行者大量变成 AI，以人类消息流为中心的 Slack/Teams 就需要被重写；与 Jack Dorsey 的 Buzz 同赛道，说明这一窗口已被广泛看见。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/24/ando-eyes-slack-as-it-builds-team-messaging-platform-for-humans-and-agents-to-work-together/)

**AI 生物医药公司 Basecamp Research 完成 1.4 亿美元 C 轮融资**
- 总部伦敦的 AI 药物研发商 Basecamp Research 完成**超额认购的 1.4 亿美元 C 轮**，估值 **8 亿美元**，S32 领投，NVIDIA、Anthropic 旗下 Anthology Fund、NATO Innovation Fund 等跟投；其 2024 年 10 月的 B 轮为 6,000 万美元。资金将用于训练新一代 **EDEN 生物基础模型**，并把 AI 设计的疗法管线推向临床开发。EDEN 基于公司经 30 多个国家合作采集的专有基因组数据集训练，可依据疾病信息直接生成候选药物；公司初期聚焦**在患者体内重编程细胞的疗法**，称其相较现有「每名患者数十万美元」的细胞疗法更可定制、更易给药，已在多类疗法与疾病上取得较强临床前结果，但未给出进临床的时间表。公司同时任命前 Biogen 高管 Richard Pearce 为首席商务官，拓展药企合作。
  > 💡 投资人覆盖 NVIDIA、Anthropic 与 NATO 创新基金，说明 AI for Science 的资本共识已延伸到安全与产业维度；「专有基因组数据集→基础模型→体内细胞疗法」的垂直闭环，是数据壁垒型 AI 药企区别于通用模型的差异化打法。
   - 来源: [Reuters](https://www.reuters.com/legal/litigation/ai-based-drug-developer-basecamp-valued-800-million-after-140-million-funding-2026-09-23/) | [IT桔子](https://www.itjuzi.com/investevent/14705214)

**机器人开发平台 Feather 主打面向软件工程师的可定制方案，售价 3 万美元**
- 初创公司 Feather 押注于一套面向软件开发者的可定制机器人平台。该平台定价为 3 万美元，旨在降低机器人开发门槛，让软件背景的开发者能够更容易地搭建机器人应用。
  > 💡 把机器人定位为类似“机器人版 Android”的开发者平台，意味着竞争焦点已从硬件本体上移到软件栈与生态。对万元级通用平台的厂商而言，能否形成可复用的开发者社区，将比单点硬件参数更决定后续市场格局。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/24/meet-feather-the-startup-building-the-android-of-robotics-for-developers)

**高通宣布收购机器人软件公司 PickNik**
- PickNik 成立于 2015 年，是一家美国机器人软件公司，也是开源机器人操作框架 MoveIt 的主要开发商。高通日前宣布已与 PickNik 达成收购协议，本次交易完成仍需满足惯例交割条件。
  > 💡 MoveIt 是 ROS 生态长期事实标准的运动规划框架，高通借此把机器人软件栈与自有 SoC 绑定，强化在机器人开发者侧的入口。
   - 来源: [IT桔子](https://www.itjuzi.com/merger/14432) | [Qualcomm 官方公告](https://www.qualcomm.com/news/releases/2026/09/qualcomm-to-acquire-picknik-to-advance-the-future-of-open-roboti)

### 研究关注
**SpeakerMem-R1：多方对话的说话人中心双轨记忆，登顶 EverMemBench 榜单**
- 论文针对多方对话长期记忆的两个瓶颈——消息归属与关系理解、交错历史下的状态重建——提出 SpeakerMem-R1：双轨记忆同时存储带说话人标注的逐字消息与派生状态，分别组织成个人级与群体级视图，查询时按实体、事件与时间融合两轨证据。为降低结构化记忆构建中的归属与更新错误并支持本地部署，用 SpeakerLevenshtein 与说话人条件 GRPO 训练了记忆写入器 Writer-R1。在 GroupMemBench、SocialMemBench、EverMemBench 上二分类准确率分别达 **47.9%、69.2%、61.9%**，其中 EverMemBench 公开榜单成绩 **62.33%，为已报告的最优结果**；在 1,986 题的 LoCoMo 上达 **70.85%**。
  > 💡 记忆系统正从「检索相关内容」进化到「分清谁说的、说谁、群体共享了什么」——多方对话把智能体记忆的归属与关系建模问题暴露得最彻底；用 GRPO 专门训练记忆写入器，也说明记忆构建正在从启发式规则走向可优化的模型行为，与同日 JiT Memory 的「读取时整理」共同勾勒出智能体记忆的活跃方向。
   - 来源: [arXiv](https://arxiv.org/abs/2609.26780)

**JiT Memory：智能体记忆推迟到读取时再整理**
- 论文提出 Just-in-Time Memory：现有智能体记忆系统多在写入时整理——任务完成后把轨迹蒸馏成反思、工作流、技能等固定工件，再按相似度检索。这迫使系统在不知道未来查询的情况下决定记什么，不可逆地丢弃信息，且存储决策的价值可能要到很多任务之后才显现，构成长程信用分配难题。JiT Memory 反其道：保留原始轨迹，把整理推迟到读取时结合当前任务进行，再从检索到的轨迹中生成任务自适应的记忆。
  > 💡 「写入时蒸馏 vs 读取时整理」的取舍，与数据库里物化视图和查询时计算的权衡同构；随着轨迹存储成本持续下降，推迟决策、保留原始信息大概率是智能体记忆系统的下一阶段形态。
   - 来源: [arXiv](https://arxiv.org/abs/2609.27334)

### X讨论
**Chelsea Finn 团队提出机器人后训练方案 EXPO-FT：19 分钟在线交互练到 30/30**
- Chelsea Finn 与 Stanford 博士生 Perry A Dong 撰文论述「机器人的通用后训练配方」：机器人预训练已像 GPT-2 时代的语言模型——复杂但不可靠，95% 的成功率在家庭场景意味着每周打碎东西，而机器人动作不像代码可以等人审核，必须比 LLM 更可靠。文章分析机器人 RL 与 LLM RL 的本质差异（真实样本昂贵、单任务动辄上千个控制步、奖励只在末端出现、环境本身随机），并给出 EXPO-FT：用轻量编辑策略对前沿模型的动作做小幅改进、再把改进吸收回模型权重，人类全程可监督干预；在穿灯串、打台球、插花等六个任务上**平均仅 19 分钟在线交互即达到 30/30 成功**。
  > 💡 「RL 后训练目前是手艺而非配方」的诊断切中要害：算法只是一半，奖励定义、场景复位、人类反馈协议这些「另一半」才是规模化的瓶颈；EXPO-FT 把前沿策略数十分钟内后训练到满成功率，是机器人走向 LLM 式可靠部署的关键证据。
   - 来源: [博客](https://pd-perry.github.io/posts/post-training.html) | [@chelseabfinn](https://x.com/chelseabfinn/status/2102806677074641001) | [@perryadong](https://x.com/perryadong/status/2102805448936305107)

**Terminal-Bench-Science 开放贡献：真实科研工作流基准向领域专家征集任务**
- Terminal-Bench-Science（Stanford 研究者主导、Terminal-Bench 原班团队打造）开放任务贡献通道：基准把 AI 智能体评测从软件工程扩展到科研工作流，任务覆盖生命、物理、地球、数学与工程五大学科，要求是真实研究工作流、可用 pytest 确定性验证、且当前最强智能体尚不能可靠解决。0.1 版上线一周内即有前沿实验室报告成绩，并被写进 Claude Fable 5.1 与 GPT-6 Astra 的发布说明；被合并任务的贡献者可获得基准论文的共同作者署名。
  > 💡 「前沿实验室优化基准所测之物」的激励被直接摆上台面——用共同署名换取领域专家的真实工作流，是 AI for Science 评测从教科书知识转向真实科研的关键一步。
   - 来源: [官网](https://www.terminal-bench-science.ai/contribute) | [@ArtificialAnlys](https://x.com/ArtificialAnlys/status/2103265956479070260)

**Epoch AI：华为 AI 算力到 2030 年将明显进步，但难以追平 NVIDIA**
- Epoch AI 认为，华为将在 2030 年之前大幅改善其 AI 计算方案。出口管制限制了其最重要的规模化杠杆，因此华为追上 NVIDIA 的可能性不大。
  > 💡 文章把出口管制与量产规模化能力作为关键约束，呼应近期 DeepSeek 据传押注华为芯片的产业动作，意味着中国侧算力替代仍以自给自足为现实目标。
   - 来源: [Epoch AI](https://epochai.substack.com/p/how-far-behind-nvidia-is-huawei)

---
*更新时间: 2026-09-27 20:35*