## 11月03日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 20 条

---

## 要点汇总

- 模型前沿：DeepSeek Harness 开源自主编程智能体原型，探索与 Claude Code、Codex 竞争; 开源长程交互 SQL Agent 框架发布，标题宣称以 8B 规模挑战 32B 模型
- 产业动态：Marvell 拟以约 800 亿美元全股票交易收购激光与光器件厂商 Lumentum; Apple 推进首款机器人 J595：硬件接近完成，软件成为进度瓶颈; 报道称 OpenAI 与 Magnite、PubMatic 合作填充 ChatGPT 空余广告位; Lumen 与 Microsoft 扩大合作，联合销售面向企业 AI 的就绪网络; 华大九天拟不超过 2.2 亿元收购奇捷科技不超 51% 股权，补强数字逻辑优化 EDA
- 算力追踪：Oracle 启动 200 亿美元融资计划，为 AI 基础设施投入补充资金; 数据中心水监测企业 Omen AI 以 1600 万美元收购 Aquatic Labs
- 初创&融资：建筑世界模型研发商 Dream models 获 1700 万美元种子轮融资，a16z 领投; 机电硬件基础模型研发商 Dulo 获 1.3 亿美元种子轮融资，聚焦机器人与自动驾驶硬件设计; Anthropic 第三季度营收近 170 亿美元，净亏损扩大至 233 亿美元; 个人 AI 助手 Wabi 获 5500 万美元种子轮融资，主打多人协作生活场景; 卫星通信基础设施商 Northwood Space 获 3.75 亿美元 C 轮融资，估值 20 亿美元
- 研究关注：REA：异步协调推理大脑与快速策略，LIBERO-Pro 成功率达 95.9%; GR-BC：用图搜索从机器人试错中筛选有效动作; MIT 团队用 AI 从 700 亿分子中筛出 9 种新型抗生素候选物
- X讨论：AMD 展示 RDNA 4 多 GPU 扩展扩散推理：四卡汇集 128GB 显存

---

## 📖 详细参考

### 模型前沿
**DeepSeek Harness 开源自主编程智能体原型，探索与 Claude Code、Codex 竞争**
- DeepSeek 展示了新型自主编程智能体的研究原型，DeepSeek Harness 团队已将其称为“超级智能体”的项目开源。团队明确表示，该研究原型并非 DeepSeek 官方产品。
  > 💡 此次开源仍处于研究原型阶段，主要价值在于展示 DeepSeek 在自主编程工具方向的技术布局，尚不能视为正式产品发布。
   - 来源: [The Information](https://www.theinformation.com/briefings/deepseek-unveils-autonomous-coding-agent-prototype)

**开源长程交互 SQL Agent 框架发布，标题宣称以 8B 规模挑战 32B 模型**
- 新智元发布的条目介绍了一套面向真实数据库的开源长程交互 SQL Agent 框架。现有证据仅显示该框架强调长程交互与真实数据库场景，并将其能力概括为以 8B 规模逆袭 32B 模型。
  > 💡 由于来源仅提供标题，框架方法、评测任务和关键数据均无法核验，暂不足以判断其实际性能与通用性。
   - 来源: [新智元](https://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA%3D%3D&mid=2652739675&idx=3&sn=90e941c875c03dc0dfc87141362d0db5)

### 产业动态
**Marvell 拟以约 800 亿美元全股票交易收购激光与光器件厂商 Lumentum**
- Marvell Technologies 周一同意以约 800 亿美元的全股票交易收购激光与光器件厂商 Lumentum。Marvell 为数据中心、网络和存储系统设计芯片，Lumentum 则为数据中心提供激光及其他光学技术。
  > 💡 这笔交易将芯片与数据中心光学产业链整合到同一家公司，反映 AI 基础设施投入正在推高高速互联相关器件的战略价值与估值。
   - 来源: [The Information](https://www.theinformation.com/briefings/marvell-buy-lumentum-115-billion-all-stock-deal)

**Apple 推进首款机器人 J595：硬件接近完成，软件成为进度瓶颈**
- 据 The Information 报道，Apple 自 2019 年开始研发代号 J595 的首款机器人，最初定位为配备可旋转九英寸屏幕和机械臂的视频通话设备。当前方案拟利用摄像头与传感器感知环境并自主行动，例如在有人进入房间时打开灯光。参与项目人士称，大部分硬件已完成约两年，但软件团队进展困难；过去一年，该团队主张缩减部分功能，将产品聚焦于 FaceTime 和开灯等少量家庭自动化能力。
  > 💡 Apple 的机器人项目已从早期视频通话设备转向环境感知与自主行动，但软硬件进度脱节及功能取舍压力显示其商业化仍面临明显挑战。
   - 来源: [The Information](https://www.theinformation.com/articles/inside-apples-slog-create-first-robot)

**报道称 OpenAI 与 Magnite、PubMatic 合作填充 ChatGPT 空余广告位**
- 据报道，OpenAI 已与 Magnite 和 PubMatic 签署合作协议，利用两家公司的广告投放软件填充 ChatGPT 的未使用广告空间。广告主可通过相关软件设置支出预算、参与竞价并上传广告，广告系统的控制权仍由 OpenAI 掌握。
  > 💡 合作表明 OpenAI 正把 ChatGPT 的广告位接入成熟程序化广告交易体系，广告库存商业化由此进入具体执行阶段。
   - 来源: [The Information](https://www.theinformation.com/briefings/exclusive-openai-sign-deals-magnite-pubmatic-fill-unused-chatgpt-ad-space)

**Lumen 与 Microsoft 扩大合作，联合销售面向企业 AI 的就绪网络**
- Lumen 与 Microsoft 宣布扩大合作，将联合销售面向企业 AI 应用的就绪网络。现有证据明确披露了双方合作范围及企业网络销售定位。
  > 💡 此次合作把企业 AI 基础设施需求进一步延伸至网络产品与服务，但现有证据未披露合同规模、客户范围及具体产品配置。
   - 来源: [Source](https://news.microsoft.com/source/2026/11/02/lumen-and-microsoft-expand-collaboration-to-co-sell-enterprise-ai-ready-networks)

**华大九天拟不超过 2.2 亿元收购奇捷科技不超 51% 股权，补强数字逻辑优化 EDA**
- 华大九天公告称，公司拟出资不超过 2.2 亿元收购参股公司奇捷科技（深圳）有限公司不超过 51% 的股权。奇捷科技是电子设计自动化工具开发商，其 EasyECO 工具可自动处理 Functional ECO 问题。此次收购旨在补齐华大九天数字逻辑优化设计 EDA 工具短板，并提升现有数字全流程解决方案竞争力；交易完成后，奇捷科技将成为华大九天控股子公司并纳入合并报表。
  > 💡 华大九天正通过控股并购补强数字逻辑优化环节，收购重点由参股升级为并表，显示其全流程 EDA 产品线整合仍在推进。
   - 来源: [IT桔子](https://www.itjuzi.com/merger/14517)

### 算力追踪
**Oracle 启动 200 亿美元融资计划，为 AI 基础设施投入补充资金**
- Oracle 周一提交文件，计划通过新发债务和股权融资筹集 200 亿美元。发行内容包括 100 亿美元投资级债券和 100 亿美元普通股，融资安排紧随其对 AI 基础设施的大量投入。受此消息影响，Oracle 股价周一跌逾 9%，年内累计跌幅扩大至 39% 以上。
  > 💡 大额债务与股权融资表明 Oracle 正以资产负债表支持 AI 基础设施扩张，同时市场也在关注融资规模与资本回报之间的平衡。
   - 来源: [The Information](https://www.theinformation.com/briefings/oracle-launches-20-billion-stock-bond-sales)

**数据中心水监测企业 Omen AI 以 1600 万美元收购 Aquatic Labs**
- Omen AI 将以 1600 万美元现金加股票的交易收购同样面向数据中心水监测市场的 Aquatic Labs。Omen AI 的传感器用于识别水中元素并判断阀门故障或细菌滋生风险，Aquatic Labs 的传感器则用于检测水体碱度，两类技术合并后可提供更完整的水与冷却液状态信息。此次并购旨在将以往需要送样并等待数日检测的流程转向实时监测与自动化；Omen AI 成立于 2024 年，并在今年 6 月完成 3100 万美元 A 轮融资。
  > 💡 数据中心扩张正在把冷却液监测从附属服务推向独立基础设施需求，两家公司合并有望形成更完整的水质实时监测方案。
   - 来源: [TechCrunch](https://techcrunch.com/2026/11/02/omen-ai-adds-liquid-know-how-in-16-million-aquatic-labs-acquisition)

### 初创&融资
**建筑世界模型研发商 Dream models 获 1700 万美元种子轮融资，a16z 领投**
- Dream models 获得 1700 万美元种子轮融资，由 Andreessen Horowitz-a16z 领投，Zigg Capital、XYZ Ventures 和 SV Angel 参投。公司研发面向 AEC 行业的 Built World Model，使用美国超过 1 亿平方英尺已审批真实建筑数据训练，模型能够理解荷载、管线、建材等工程约束并生成可用于施工报价的建筑方案。其产品优先覆盖办公室、门店、仓库和数据中心等商业建筑，目前已有 10 个落地项目。
  > 💡 Dream models 将世界模型从视觉效果生成推进到工程约束理解与施工报价方案输出，若落地项目中的方案质量能够持续验证，其差异化将主要体现在建筑生产流程而非单纯生成效果。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14707049)

**机电硬件基础模型研发商 Dulo 获 1.3 亿美元种子轮融资，聚焦机器人与自动驾驶硬件设计**
- Dulo 获得 1.3 亿美元种子轮融资，投资者包括 John Doerr、Eric Schmidt、Lowercarbon Capital、Construct Capital 和 DST Global。公司研发面向机电硬件的工程基础模型，融合 CAD、材料、多物理场仿真与历史工程数据，自动生成满足物理约束且可制造的硬件方案，重点服务机器人与自动驾驶硬件研发。
  > 💡 Dulo 以可制造的物理约束方案切入硬件研发流程，试图缩短原型迭代周期；其商业价值仍取决于生成方案在真实工程验证中的可靠性。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14707056)

**Anthropic 第三季度营收近 170 亿美元，净亏损扩大至 233 亿美元**
- 据 The Information 报道，Anthropic 截至 9 月的第三季度营收接近 170 亿美元，环比增长 47%。公司同期净亏损为 233 亿美元，略低于上年同期 121 亿美元净亏损的两倍。
  > 💡 营收仍保持较快增长，但环比增速与亏损规模同时扩大，表明扩张阶段的成本压力依然突出。
   - 来源: [The Information](https://www.theinformation.com/briefings/anthropics-revenue-surged-17-billion-q3-swung-back-operating-loss)

**个人 AI 助手 Wabi 获 5500 万美元种子轮融资，主打多人协作生活场景**
- 个人人工智能助手提供商 Wabi 获得 5500 万美元种子轮融资，由 Headline Asia 领投，Alex Pall、Marissa Mayer、Marc Benioff、Tobi Lütke、Amazon Alexa Fund、Forerunner Ventures 与 Andreessen Horowitz-a16z 等参投。Wabi 的产品包括 AI Agent、对话内动态迷你应用和共享协作空间，覆盖行程规划、食谱采购、打卡挑战与预算管理，并可连接邮箱、日历和财务工具进行待办提醒。
  > 💡 Wabi 以家庭和朋友间的多人协作为差异化方向，并连接日常工具与生活管理场景，融资规模显示资本对其个人 AI 交互入口仍有较高兴趣。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14707028)

**卫星通信基础设施商 Northwood Space 获 3.75 亿美元 C 轮融资，估值 20 亿美元**
- 卫星基础设施公司 Northwood Space 宣布获得 3.75 亿美元 C 轮融资，由 Andreessen Horowitz 与 DFJ Growth 联合领投，公司估值达到 20 亿美元。Northwood Space 成立于 2022 年，主要开发用于改善卫星与地球通信的天线、软件及相关技术。公司称，本轮融资及与 HSBC 的财务安排将用于扩大团队、履行现有合同和推进业务规模化。
  > 💡 大额融资和明确的合同履约用途表明，Northwood Space 正从卫星通信技术开发向规模化交付阶段推进。
   - 来源: [TechCrunch](https://techcrunch.com/2026/11/02/northwood-space-raises-375m-series-c-at-a-2b-valuation-from-a16z-and-dfj-growth)

**42AI 获 6250 万美元种子轮融资，以行为世界模型预测个人决策概率**
- 以色列初创公司 42AI 结束隐身状态并获得 6250 万美元种子轮融资，公司正在开发“行为世界模型”，用于分析个人在全新情境中的决策倾向并给出相应概率。公司称，该预测系统已率先在数家金融经纪机构运行，用于预测交易者在波动环境下的反应。42AI 表示，其方法试图从人们面对看似无关事件时的反应中识别内在动机，而非仅依据既往行为外推模式。
  > 💡 42AI 将预测对象从群体行为模式进一步下沉到个人决策概率，若能在金融场景验证稳定性，将为行为建模提供新的商业化路径。
   - 来源: [TechCrunch](https://techcrunch.com/2026/11/02/42ai-comes-out-of-stealth-with-62-5m-and-a-world-model-that-can-predict-human-behavior)

**工业人形机器人 AI 企业 Bleu Robotics 获 500 万欧元 Pre-种子轮融资**
- 工业人形机器人 AI 软件服务商 Bleu Robotics 获得 500 万欧元 Pre-种子轮融资，由 OVNI Capital 与 Contrarian Ventures 联合领投，Charlie Songhurst、WEPA Ventures、Kvanted 和 Motier Ventures 参投。Bleu Robotics 不自研机器人硬件，主要打造跨平台溯因学习具身模型，通过少量示教让机器人学习装配、物料处理等任务。公司目标是将新任务部署时间缩短至 1 小时内，以适配多品种、小批量产线，目前已在汽车和造纸企业开展试点。
  > 💡 Bleu Robotics 选择软件模型层而非机器人硬件，融资将用于推进跨平台具身学习与产线落地，其核心商业价值取决于新任务部署效率能否在真实生产中持续兑现。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14707063)

### 研究关注
**REA：异步协调推理大脑与快速策略，LIBERO-Pro 成功率达 95.9%**
- 论文提出 REA，一种面向具身智能的路由式运行时，通过 System 2 推理、System 1 路由和 System 0 快速策略协同执行控制。REA 使用预先记录策略成功率的路由记忆、边界触发式判断门和共享预算升级机制，规定运行中的策略不得等待推理系统。在覆盖 60 个 LIBERO-Pro 任务的 3,000 次测试中，REA 成功率达到 95.9%，较其策略池中最优单智能体基线的 94.7% 提升 1.2 个百分点，同时控制步数减少 25%、控制时间减少 17%。在另一项包含 100 次测试的 RoboTwin 2.0 研究中，REA 使用 VLA 策略和 VLA 加代码时分别取得 84% 和 86% 的成功率，高于最强单一 VLA 基线 MEDex 的 80%。
  > 💡 REA 的价值在于用统一运行时协调推理与快速策略，并显式处理失败恢复和静默故障；实验结果同时覆盖仿真与 Unitree G1 人形机器人，但其迁移效果仍取决于具体策略和任务。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2610.42053)

**GR-BC：用图搜索从机器人试错中筛选有效动作**
- 浙江大学与 TeleAI 联合提出 GR-BC，用图搜索方法从机器人操作过程中的试错数据中寻找有效动作。该方法面向机器人精细操作中的连续调整需求，条目以拧紧螺丝这一需要移动、旋转、退回和重新对齐的过程说明问题。
  > 💡 GR-BC 的核心方向是把试错经验转化为可搜索的动作知识，但现有证据未提供任务范围、对比基线和量化结果，实际提升仍待完整数据验证。
   - 来源: [机器之心](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw%3D%3D&mid=2651071630&idx=3&sn=eb53a9e986917c63fb1231d3ec554c30&chksm=85014f22535ee8c2bfeda7510404212e5b6f1724eb2b7009ed6ddaadcc24c716808d47da4c57&scene=0&xtrack=1)

**MIT 团队用 AI 从 700 亿分子中筛出 9 种新型抗生素候选物**
- 麻省理工学院近日公布，其团队利用 AI 在约 700 亿个分子中发现了 9 种新型抗生素候选物。该项目尝试面向难以治疗的耐药菌感染，探索从大规模分子库中寻找潜在药物及设计新化学结构的研发方式。现有证据仅披露候选物数量与研究方向，未说明候选物是否已通过临床验证。
  > 💡 这项进展显示生成式 AI 正进入早期药物发现环节，但候选物能否转化为可用药物仍取决于后续实验和临床验证，现阶段不宜将其视为成熟疗法。
   - 来源: [DeepTech深科技](http://mp.weixin.qq.com/s?__biz=MzA3NTIyODUzNA%3D%3D&mid=2649807966&idx=2&sn=417b18961bdf42977b6c7f019f0e046e&chksm=86671ca60affe0b6fe755f461f32dadada50096adbd6d8b20b38f9ba629ad658e197ed8db2bb&scene=0&xtrack=1)

### X讨论
**AMD 展示 RDNA 4 多 GPU 扩展扩散推理：四卡汇集 128GB 显存**
- AMD 在 ROCm 博客中介绍如何将扩散模型推理扩展到多块 AMD RDNA 4 GPU。每块 Radeon AI PRO R9700S GPU 配备 32GB 内存，四 GPU 系统可汇集 128GB GPU 显存。该配置能够运行 FLUX.2、Qwen-Image、Wan 2.2、Stable Diffusion 3.5 和 Z-Image 等大型图像与视频生成工作负载。
  > 💡 大显存使 RDNA 4 平台能够承接模型规模较大的生成任务，但现有证据仅说明硬件容量与适用工作负载，尚未给出相对吞吐量、延迟或成本指标。
   - 来源: [AMD ROCm Blogs](https://rocm.blogs.amd.com/artificial-intelligence/diffusion-xdit-rdna4/README.html)


---
*更新时间: 2026-11-03 11:53*