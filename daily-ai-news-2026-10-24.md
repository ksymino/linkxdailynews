## 10月24日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 15 条

---

## 要点汇总

- 模型前沿：Kimi 发布 Kimi K3.1 Pro：3T 级 MoE、100 万 Token 上下文，支持多模态与开放权重; MiniMax 开放 M3.1 Flash 权重：428B 总参数、每 Token 激活 23B
- 产业动态：inDrive 联合 Pony.ai、Nvidia 计划 2027 年在哈萨克斯坦测试 Robotaxi; Commonwealth Fusion Systems 获 8500 万美元政府资助，开发聚变能半导体; 报道称 Ramp 投资方因 Airwallex 交易流产推动对华业务调查; Hugging Face 旗下 Microduck 机器人预售超 2 万台，开放源码并支持训练新动作
- 算力追踪：OpenAI 扩展 ChatGPT 存储架构：Habitat 借 Azure Cosmos DB 将读取速度提升 12 倍
- 初创&融资：报道称大语言模型公司 DeepSeek 完成 1060 亿元第二轮融资; 机器人触觉技术公司 Enact Intelligence 获得 2668 万欧元种子轮融资; 福建人形机器人创新中心完成 Pre-A+ 轮融资，推进“福智”轮臂人形机器人; Warp Sciences 获 2.15 亿美元 A 轮融资，以 AI 湿实验室承接临床前小分子研发; Daytona 获 6000 万美元 B 轮融资：Agent 云估值达 10 亿美元
- 研究关注：WeVisOne-VL 统一物体与像素级视觉感知：覆盖检测、分割、OCR 等任务; SplatLab 自动开展 3DGS 研究：复现论文、训练消融并生成可追溯手稿; TILDE 将具身基础模型能力蒸馏给策略：真实任务性能最高提升 4.1 倍

---

## 📖 详细参考

### 模型前沿
**Kimi 发布 Kimi K3.1 Pro：3T 级 MoE、100 万 Token 上下文，支持多模态与开放权重**
- Kimi 发布 Kimi K3.1 Pro，将其定位为能力最强的 3T 级开放权重模型。该模型采用 MoE 架构，总参数量 2.8T、单次激活参数量 104B，支持 100 万 Token 上下文和多模态。官方称其可用于 Unreal、Unity 与 Godot 游戏开发，并在 Blender、CAD 参数化建模及金融建模等任务中表现提升，金融建模幻觉率降低 65%。
  > 💡 Kimi K3.1 Pro 将超大规模 MoE、百万级上下文、开放权重与多模态结合，但官方给出的任务表现仍需通过独立评测进一步验证。
   - 来源: [@kimi_moonshot](https://x.com/Kimi_Moonshot/status/2113680701770068067)

**MiniMax 开放 M3.1 Flash 权重：428B 总参数、每 Token 激活 23B**
- MiniMax 宣布公开 M3.1 Flash 模型权重，该模型总参数量为 428B，每个 Token 激活 23B。官方称其在智能体、编程和网络安全任务上取得提升，并列出 BankerToolBench 76.2、DeepSWE v1.1 73.7%、OSWorld V2 61.7、Agents' Last Exam 29.6 和 CyberGym 82.2 等成绩。模型采用 MiniMax Sparse Attention 与 DSpark 推测解码技术，重点面向推理效率。
  > 💡 M3.1 Flash 将大规模 MoE 与稀疏注意力、推测解码结合，权重开放有利于开发者采用和部署，官方评测的实际可复现性仍是后续观察重点。
   - 来源: [@minimax_ai](https://x.com/MiniMax_AI/status/2113436864904610008)

### 产业动态
**inDrive 联合 Pony.ai、Nvidia 计划 2027 年在哈萨克斯坦测试 Robotaxi**
- 网约车平台 inDrive 与自动驾驶公司 Pony.ai、Nvidia 签署谅解备忘录，探索将 Pony.ai 的 Robotaxi 接入 inDrive 平台。三方计划于 2027 年上半年首先在哈萨克斯坦首都阿斯塔纳开展测试，初期配置安全员，并以最终实现无人驾驶接驾为目标。按拟议方案，Pony.ai 提供 Gen-7 Robotaxi，inDrive 负责通过其叫车应用提供并运营服务，Nvidia 则提供 Hyperion 平台和 Halos 安全系统等 AI 技术。
  > 💡 这意味着 Robotaxi 商业化验证正在从美国和中国延伸至中亚市场，但初期仍依赖安全员，项目能否按计划推进将取决于后续测试与监管条件。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/22/uber-rival-indrive-eyes-2027-robotaxi-tests-in-central-asia-with-pony-ai-and-nvidia)

**Commonwealth Fusion Systems 获 8500 万美元政府资助，开发聚变能半导体**
- Commonwealth Fusion Systems 宣布将获得美国政府提供的 8500 万美元，用于开发聚变电站所需的先进芯片，资助来自美国商务部 CHIPS Act 拨款，同时政府将取得 CFS 的股权。公司计划将资金用于五项计划，包括推进用于管理高电压的碳化硅功率电子、下一代射频电源发生器，以及用于更快控制和抗辐射加固的先进电子技术。CFS 正推进 Sparc 反应堆，并计划于 2027 年启动，其目标是在商业电站建设过程中增强美国本土半导体研发与制造能力。
  > 💡 该资助把聚变能产业化与本土功率半导体供应链建设绑定，显示美国正通过制造能力投资扶持聚变从示范装置走向商业电站所需的配套技术。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/23/commonwealth-fusion-systems-gets-85m-to-build-better-fusion-ready-semiconductors)

**报道称 Ramp 投资方因 Airwallex 交易流产推动对华业务调查**
- 报道称，Airwallex CEO Jack Zhang 在部分投资者希望与 Ramp 竞争的压力下，终止了与 Ramp 的合作谈判，Ramp 联合创始人兼联席 CEO Eric Glyman 随后尝试挽救该交易但未获同意。交易取消后，Ramp 的部分知名且有政治关系的投资者通过公开和私下行动，敦促美国政府调查 Airwallex 与中国政府之间可能存在的联系。这些投资者指称，中国政府可能访问 Airwallex 中国子公司处理的客户数据，但报道未提供调查已经启动的确认。
  > 💡 该事件显示跨境支付合作破裂后，资本方可能借助政府审查施压竞争对手；相关数据访问指控仍是投资者主张，尚不能据此判断 Airwallex 存在实际违规。
   - 来源: [The Information](https://www.theinformation.com/articles/ramp-investors-went-nuclear-airwallex-doomed-deal)

**Hugging Face 旗下 Microduck 机器人预售超 2 万台，开放源码并支持训练新动作**
- Microduck 机器人在 Nvidia CEO Jensen Huang 于 GTC Berlin 主题演讲中亮相后广受关注，Hugging Face 的 Clem Delangue 表示次日其预售量已超过 2 万台，计划在圣诞节前交付。该设备由 Pollen Robotics 制造，Pollen Robotics 于 2025 年被 Hugging Face 收购，而 Hugging Face 又于 2026 年 9 月被 Nvidia 收购，因此 Microduck 现属于 Nvidia。Microduck 是开源设备，使用 Nvidia 技术栈进行训练，基础动作包括行走、坐下和站立，用户还可以训练新动作并与社区分享。
  > 💡 Microduck 将开源机器人、Nvidia 仿真训练和社区动作扩展结合到消费级产品中，超 2 万台预售显示其已获得一定早期市场关注，年度最畅销机器人仍属于预测。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/23/hottest-toy-for-christmas-nvidia-ceo-plays-with-adorable-microduck-robots-20000-sell)

### 算力追踪
**OpenAI 扩展 ChatGPT 存储架构：Habitat 借 Azure Cosmos DB 将读取速度提升 12 倍**
- OpenAI 介绍了为超过 10 亿 ChatGPT 用户扩展在线存储的工程实践。公司通过 Habitat 实现可靠的多租户架构和全球缓存，并使用 Azure Cosmos DB 将 ChatGPT 的读取速度提升 12 倍。
  > 💡 该案例表明，面向超大规模生成式 AI 产品的存储竞争已从单纯容量扩展到多租户隔离、全球缓存和数据访问效率的综合优化。
   - 来源: [OpenAI News](https://openai.com/index/scaling-storage-one-billion-users-part-two)

### 初创&融资
**报道称大语言模型公司 DeepSeek 完成 1060 亿元第二轮融资**
- 据报道，DeepSeek 已完成第二轮融资，共募集 1060 亿元人民币，折合 159 亿美元。知情人士称，该轮融资规模超过原定 500 亿元人民币目标的两倍，成为中国 AI 行业规模最大的融资交易之一。
  > 💡 超大规模融资显示资本市场对头部大语言模型公司的投入仍在显著增加，但公开信息尚未披露估值、投资方结构及资金具体用途。
   - 来源: [The Information](https://www.theinformation.com/briefings/deepseek-raises-nearly-16-billion-second-funding-round)

**机器人触觉技术公司 Enact Intelligence 获得 2668 万欧元种子轮融资**
- 机器人技术服务商 Enact Intelligence 获得 2668 万欧元种子轮融资，投资方包括 Andrew Lonsberry、Arthur Mensch、Yann LeCun、Firstminute Capital、Notion Capital 和 Redalpine。该公司把力感知能力集成到机器人驱动器内部，无需额外触觉传感器，并配套 AI 运动控制模型构建全身触觉感知系统。其产品面向欧洲中小工厂的多品种柔性装配场景，可承担插装、锁螺丝等接触力敏感任务。
  > 💡 Enact Intelligence 以驱动器内置力感知切入工业精细装配，试图降低触觉系统的额外部署成本，融资将为其产品落地提供资源。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706474)

**福建人形机器人创新中心完成 Pre-A+ 轮融资，推进“福智”轮臂人形机器人**
- 福建人形机器人创新中心获得 Pre-A+ 轮融资，投资方为厦门航智量数未来科技孵化器和福州市鼓楼区城建投资发展集团。该中心自研“福智”系列轮臂人形机器人，采用全 3D 打印本体量产，并结合 VLA 大模型与外骨骼遥操技术，支持感知、决策和执行一体化及深度定制。“福智”系列已在福州、厦门多地完成多场景封闭测试，适配智慧园区、交通协管和工业巡检等场景。
  > 💡 本轮融资有助于推进“福智”系列产品从封闭测试走向商业应用，但其实际交付规模、客户结构与场景效果尚待披露。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706465)

**Warp Sciences 获 2.15 亿美元 A 轮融资，以 AI 湿实验室承接临床前小分子研发**
- Warp Sciences 获得 2.15 亿美元 A 轮融资，由 Lightspeed Venture Partners 光速全球领投，Menlo Ventures、Premji Invest、Lux Capital、Mayfield Fund 和 Headline Asia 参投。公司利用化学家示教数据训练实验机器人，构建自动化湿实验室及实验数据与 AI 模型迭代闭环，为药企和 Biotech 合成、测试先导优化及分子类似物等临床前研发所需的小分子化合物，并仅在交付成功时收费。公司希望将药物合成化学产能保留在美国本土，相关技术方案仍处于商业化起步验证阶段。
  > 💡 这笔融资显示资本正押注“AI 模型加自动化湿实验室”对临床前化学服务的规模化改造，但公司尚处商业化验证早期，融资规模与交付能力能否匹配仍待观察。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706486)

**Daytona 获 6000 万美元 B 轮融资：Agent 云估值达 10 亿美元**
- Daytona Platforms 宣布完成由 FirstMark Growth 领投的 6000 万美元 B 轮融资，估值达到 10 亿美元，累计融资额为 9100 万美元，FirstMark Growth 此前也领投了其 2400 万美元 A 轮融资。本轮参投者包括 Stripe 创始人 Patrick Collison、Shopify 创始人 Tobi Lütke、Perplexity 创始人 Aravind Srinivas，以及 Qualcomm Ventures、Samsung Next 和 Okta Ventures 等。该公司为长时间运行的智能体提供云环境，智能体可在同一平台上使用隔离的 Linux、Windows、macOS 和 GPU 等资源。
  > 💡 Daytona 的融资规模和投资方阵容表明，面向智能体工作负载的云基础设施已成为独立资本关注方向，其差异化价值取决于能否可靠承载大量短期、有状态任务。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/23/agent-cloud-startup-daytona-hits-1b-valuation-backed-by-firstmark-and-a-whos-who-of-angels)

### 研究关注
**WeVisOne-VL 统一物体与像素级视觉感知：覆盖检测、分割、OCR 等任务**
- 论文提出 WeVisOne-VL，通过结构化下一词预测统一物体级与像素级视觉感知，支持目标检测、指代定位、计数、OCR、分割和抠图等任务。该模型以特殊词元接入轻量像素解码器，生成实例级像素输出，并采用三阶段 SFT 与混合任务 RL 进行训练。模型已在 30 多个 benchmark 上取得领先表现，同时对目标不存在的查询保持稳健拒绝能力，并以开源形式发布。
  > 💡 WeVisOne-VL 将定位粒度从点和框扩展到掩码与 alpha matte，若其跨任务表现和泛化能力得到独立验证，有望减少多套视觉模型并存带来的工程复杂度。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2610.31329)

**SplatLab 自动开展 3DGS 研究：复现论文、训练消融并生成可追溯手稿**
- 论文提出 SplatLab，面向 3D Gaussian Splatting 构建端到端自主研究系统，可从研究提示、目标论文链接或无输入启动，复现基线、提出扩展方案、完成训练与消融，并撰写手稿。系统以八组候选方案的级联加权 Elo 锦标赛进行筛选，依据 GPU 实测 PSNR 提供反馈，并通过常驻反证机制评估候选方案的失败风险。实验中的每个报告数字均绑定到已记录的训练运行，在以 PSNR 为目标的实验中，手稿结果较复现目标提升 0.18 至 3.78 dB，代码、手稿和实验账本均已公开。
  > 💡 SplatLab 的关键价值在于把研究产物与训练记录绑定，并让候选方案经过可执行评测而非仅依赖文本生成；其成果仍需通过更多 3DGS 场景和人工研究审查验证可复现性。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2610.30468)

**TILDE 将具身基础模型能力蒸馏给策略：真实任务性能最高提升 4.1 倍**
- 论文提出 TILDE，通过在学生策略诱导的状态上进行同策略蒸馏，并学习教师执行的恢复轨迹，将具身基础模型的操作能力迁移给未经动作预训练的策略。TILDE 同时提出 AutoDAgger，利用机器人奖励模型监测任务进度并触发教师介入，在无需人工监控或手动控制的情况下收集恢复经验。AutoDAgger 的恢复轨迹收集速度超过人工介入方法两倍，TILDE 在三项真实世界任务中的性能最高达到行为克隆的 4.1 倍，并支持跨架构蒸馏。
  > 💡 TILDE 展示了一种减少机器人动作预训练数据与算力需求的路径，AutoDAgger 的自动介入机制尤其适合扩展失败恢复样本，但三项真实任务的结果尚不足以证明其对复杂长程任务同样有效。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2610.25376)


---
*更新时间: 2026-10-25 01:00*