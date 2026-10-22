## 09月09日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 21 条

---

## 要点汇总

- 模型前沿：Inception 发布 Mercury 2.5：最强扩散 LLM，1100+ tok/s 且智能较上代提升 40%; OpenAI 发布 ChatGPT Images 2.5：图像生成全面升级; Nex AGI 的 agentic N2.5 系列上线 OpenRouter：Pro 与 Mini 限时免费
- 产业动态：Meta 推出个人 agent 应用 Muse：由 Muse Spark 1.3 驱动; Cohere 发布基于 decode megakernel 的开源推理系统; Google DeepMind 上线 AlphaGenome Atlas：覆盖 90 亿个可能单碱基变异的可搜索影响预测数据库
- 算力追踪：Google 复活的艾奥瓦核电厂获美国能源部 19 亿美元贷款
- 初创&融资：Cognition 完成超 200 亿美元估值融资，半年内年化收入从 4.92 亿增长至近 9 亿; Mistral 完成 30 亿欧元 D 轮融资，估值 210 亿欧元，瞄准主权 AI 基础设施; 漂浮式小型核反应堆公司 Bluecore Energy 完成 5000 万美元种子轮; Opendoor 创始人 Eric Wu 再创业：NavigateAI 获 2500 万美元种子轮，用 AI 眼镜补建筑劳动力缺口; AI 芯片性能工程公司 Wafer 完成 400 万美元种子轮，教 AI 写硬件级 kernel 代码
- 研究关注：Dr. Claw：以人类决策为锚点的 AI 研究工作空间; 扩散增强 LLM：以扩散权重并行采样，无损加速自回归生成; FlowBalance：用验证器校准的自我引导，替代脆弱的自提升内循环; 以博弈论框架分析多智能体 LLM 协调与反思机制
- X讨论：SemiAnalysis 指控 Gemini 3.8 Flash 与 Muse Spark 1.3 "刷榜"，公开基准的宿命论; World Labs 的 Atlas 世界模型实现实时生成与导航，B200 与 MI355X 性能相当; OpenAI 公布千禧年数学难题 Navier-Stokes 完整证明：下一代模型驱动的 Agent 群体消耗 3 千亿 token; vLLM 推出 Hybrid HiSparse 内存分层，让 GLM 5.3 在 8×H200 节点上跑满 100 万上下文; Deft Robotics 开售轮式人形机器人 Simba：整机 3.49 万美元起，主打汽车产线实战

---

## 📖 详细参考

### 模型前沿
**Inception 发布 Mercury 2.5：最强扩散 LLM，1100+ tok/s 且智能较上代提升 40%**
- Inception 发布 Mercury 2.5，自称市场上最强、据信也是迄今训练过的**最大扩散语言模型**：智能水平较 Mercury 2 提升 **40%**，官方称可与 GPT-5.6 Luna（Low）、Gemini 3.5 Flash-Lite、Claude Haiku 4.5 等成本优化的前沿模型对标；在广泛可得的 NVIDIA GPU 上跑出 **1107 tok/s**，支持 **260K 上下文**，定价每百万输入 0.20 美元、输出 0.75 美元。公司称自 Mercury 2 发布以来用量增长超一个数量级，已通过 API、OpenRouter 与 Baseten 提供。
  > 💡 扩散 LLM 路线首次在"智能-速度"两轴上同时摸到成本优化前沿模型的门槛；若 40% 的提升在第三方基准站得住，Mercury 将把"亚秒级首 token + 千级吞吐"从 demo 变成生产可选。
   - 来源: [@_inception_ai](https://x.com/_inception_ai/status/2097365772289151417) | [Inception Labs](https://www.inceptionlabs.ai/blog/introducing-mercury-2-5)

**OpenAI 发布 ChatGPT Images 2.5：延迟较上代最高降 50%，API 推出 Flare 与 Sunburst 双模型**
- OpenAI 发布 ChatGPT Images 2.5。官方披露用户每周在 ChatGPT Images 与 GPT-Image API 上创建**超 30 亿张图像**；新模型带来更自然光照与更丰富纹理、更强的参考图主体保持、更可靠的多轮编辑指令遵循（此前编辑不随轮次退化），以及**较 Images 2.0 最高降低 50% 的生成延迟**。产品侧新增：Sketch（在 ChatGPT 里直接手绘作为成图参考，输入 @Sketch 调用）、Templates（海报/周边等常用格式模板）、图片上直接加批注定位编辑、以及分享图片时附带 prompt 供他人复用。API 同步推出两款模型：**GPT-Image-2.5 Flare**（默认选择，比 GPT-Image-2 质量更高且延迟低 50%）与 **GPT-Image-2.5 Sunburst**（面向更精细的创意编辑工作流，生成时间更长）；Higgsfield、Adobe、Manus、Runway 为早期客户。安全侧继续沿用 C2PA 元数据与不可见水印。
  > 💡 "每 30 亿张/周"的基盘意味着图像生成已是 ChatGPT 最高频用途之一，此轮升级的重心明显从"生成质量"转向"编辑可控性与工作流化"（Sketch/模板/批注/prompt 分享）——OpenAI 在把图像能力从对话玩具改造成创意生产力工具。
   - 来源: [OpenAI](https://openai.com/index/introducing-chatgpt-images-2-5/)

**Nex AGI 的 agentic N2.5 系列上线 OpenRouter：Pro 与 Mini 限时免费**
- OpenRouter 宣布 Nex AGI 的 agentic N2.5 系列（Nex-N2.5-Pro 与 Nex-N2.5-Mini）上线：官方定位是"把目标变成可运行、可验证的产出"，以 agentic coding 为核心强项，两款模型均支持工具调用与可调推理力度，限时免费开放。
  > 💡 OpenRouter 正在成为新模型分发的默认首站，"上线即免费"的打法说明 agentic 编码赛道的获客竞争已烧到推理分发层。
   - 来源: [@openrouter](https://x.com/OpenRouter/status/2097429886541693069)

### 产业动态
**Meta 推出个人 agent 应用 Muse：由 Muse Spark 1.3 驱动**
- Meta 正式推出 Muse，一个"帮你把事情办成"的个人 agent 应用，由 Muse Spark 1.3 驱动。官方发布文阐述了产品哲学：模型主动、持有更多上下文、能力强到可以"生成自己的体验"，团队围绕此做了大量新产品决策（新的沟通与创建方式，以及数据与操作安全边界），系统提示词第一行即"你的目的是让用户的生活更好"。
  > 💡 Meta 把"个人 agent"从模型能力叙事落到独立应用，正面切入消费者日程/代办场景；与 OpenAI 的 Operator 类产品相比，Muse 的差异点在于绑定自家模型栈与社交图谱。
   - 来源: [@aiatmeta](https://x.com/AIatMeta/status/2097401493770956808) | [Muse](https://introducing.muse.ai/)

**Cohere 发布基于 decode megakernel 的开源推理系统**
- Cohere 发布技术深度文章并开源其面向 North Mini Code 的 decode megakernel 服务引擎：把整个解码前向压进单个 kernel，消除小 batch 下逐 kernel 启动的等待开销。North Mini Code 为 **30B 总参、3.3B 激活**的模型，BF16 下每步解码需从 HBM 流过约 6.6GB 权重，H100 3.35TB/s 带宽对应理论上限约 470 tok/s；实测在单张 H100 上**端到端比 vLLM 快 1.25–1.41 倍**（官方称特定配置最高 1.58 倍），代码已在 GitHub 开源。
  > 💡 把推理内核从通用调度框架拆出、做成单内核，意味着 Cohere 把推理层的差异化押在底层 kernel 的极致优化上；这条路线对自研模型公司门槛不低，但单位硬件吞吐的提升直接转化为服务成本优势。
   - 来源: [@cohere](https://x.com/cohere/status/2097410772355666393) | [Cohere](https://cohere.com/blog/megakernels)

**Google DeepMind 上线 AlphaGenome Atlas：覆盖 90 亿个可能单碱基变异的可搜索影响预测数据库**
- DeepMind 推出 AlphaGenome Atlas，一个 AI 驱动的可搜索数据库，对人类基因组中**全部约 90 亿个可能的单碱基变异（SNV）**逐一生成分子层面的影响预测，相当于给基因组装上一张"变异影响地图"。研究者可按基因、变异类型或预测效应检索，用于理解致病机理、 prioritise 实验验证对象等场景。该数据库建立在 AlphaGenome 模型对 DNA 序列到分子表型的预测能力之上。
  > 💡 把"每个可能变异都先算一遍影响"做成公开可搜索的基础设施，意味着变异解读从"逐个查询模型"变成"查地图"；对罕见病与复杂疾病的变异优先级排序是直接受益场景，但也把"预测即证据"的验证责任压给了下游实验。
   - 来源: [@GoogleDeepMind](https://x.com/GoogleDeepMind/status/2097325048109384166) | [Google DeepMind](https://deepmind.google/blog/alphagenome-atlas-a-predictive-map-of-every-possible-dna-letter-change-in-the-human-genome/)

### 算力追踪
**Google 复活的艾奥瓦核电厂获美国能源部 19 亿美元贷款**
- NextEra Energy 旗下艾奥瓦 Duane Arnold Energy Center 核电厂的修复工程获得美国能源部 19 亿美元贷款支持，工厂计划于 2029 年重启发电。这笔贷款是同类融资中的第二笔，上一笔是去年向 Constellation Energy 提供的、用于重启三哩岛反应堆的 10 亿美元贷款。Google 已表态将在该核电厂附近筹建最多六座数据中心，以支撑其 AI 算力扩张。
  > 💡 美国能源部一年内连出两笔核电厂重启贷款，反映出 AI 数据中心用电需求已经把核电从'气候叙事'重新拉回到'基载电力'定位，核电与 AI 算力的捆绑正成为联邦层面的产业政策工具。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/08/googles-revived-nuclear-power-plant-gets-1-9b-loan-from-us-government)

### 初创&融资
**Cognition 完成超 200 亿美元估值融资，半年内年化收入从 4.92 亿增长至近 9 亿**
- Cognition 宣布完成 **20 亿美元以上融资，投后估值 480 亿美元**，由新投资方 a16z 与 Accel 领投，Founders Fund、General Catalyst、Avenir 等现有投资方跟投，Benchmark、Bessemer、Kleiner Perkins、Greylock、Lightspeed、T. Rowe Price、DST 等约 40 家机构参与。Cognition 表示，自 5 月上一轮融资以来，公司年化经常性收入已从 **4.92 亿美元增长至接近 9 亿美元**。
  > 💡 半年内收入接近翻倍叠加估值跃升至 480 亿，说明 AI 编码 Agent 的企业付费意愿已被资本市场验证，Cognition 在该赛道进一步拉开与同行的体量差距。
   - 来源: [@cognition](https://x.com/cognition/status/2097369798518681891) | [Cognition](https://cognition.com/blog/series-e)

**Mistral 完成 30 亿欧元 D 轮融资，估值 210 亿欧元，瞄准主权 AI 基础设施**
- 法国 AI 实验室 Mistral 宣布完成 30 亿欧元 D 轮融资，投后估值约 210 亿欧元（约 243.9 亿美元），本轮由三星电子领投，EQT 旗下 Scaleup Europe Fund 与现有投资方 PSG Equity 共同跟投。Mistral 表示资金将用于扩大算力、建设基础设施、加速商业增长以及拓展国际布局，并重申目标并非打造欧洲版 ChatGPT，而是作为 AI 实验室与服务商运营。
  > 💡 三星入局领投叠加欧洲资本抱团，意味着主权 AI 已从政策叙事进入资本与硬件双重落地的阶段，Mistral 的 1GW 算力目标和区域化推理选项正在成为欧洲摆脱对美依赖的实质性抓手。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/08/mistral-raises-e3b-as-sovereign-ai-becomes-big-business) | [Mistral](https://mistral.ai/news/mistral-makes-sovereign-open-weight-ai-to-frontier/)

**漂浮式小型核反应堆公司 Bluecore Energy 完成 5000 万美元种子轮**
- Bluecore Energy 宣布完成超额认购的 5000 万美元种子轮融资，距离其 1000 万美元 pre-seed 轮和隐身期结束仅约两个月。本轮由 Silverton Partners 领投，用时八周完成，Slauson & Co.、Harlem Capital、Chris Larsen 等老股东加倍追投，Collab Capital、Kevin Hart 旗下 HartBeat Ventures 以及来自 Tesla、Uber、Amazon、Google 的天使投资人参与。创始人 Kofi Asante 表示，公司主打建于浮动驳船上的小型模块化反应堆（SMR），目标是为港口及周边基础设施提供可移动的清洁能源。
  > 💡 AI 电力焦虑外溢到上游发电端，但本轮叙事并非数据中心专属，而是把反应堆做成'可搬运的能源模块'，相当于把传统大型基载电力的思路下沉到分布式场景，对应的是港口、矿区等中型工业用电方。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/08/nuclear-startup-bluecore-energy-raises-50m-seed-round-just-two-months-after-launch)

**Opendoor 创始人 Eric Wu 再创业：NavigateAI 获 2500 万美元种子轮，用 AI 眼镜补建筑劳动力缺口**
- Opendoor 创始人 Eric Wu 的新公司 **NavigateAI** 于 5 月底正式亮相，完成 **2500 万美元种子轮**（投后估值 2.25 亿美元），Elad Gil 领投，Khosla Ventures、Fifth Wall、Tishman Speyer、电气承包商 Helix Electric 及 DoorDash 的 Tony Xu、Instacart 的 Apoorva Mehta、Coinbase CEO Brian Armstrong 等参投。产品跑在智能手机上，并可**免手持模式通过 Meta AI 眼镜**使用：建筑工人对准正在安装的构件，用自然语言询问安装是否正确、扭矩是否达标、是否符合规范，系统实时调取建筑规格、厂商手册与公司政策；公司正与 Meta 合作为眼镜做安全认证，并与 AIM 光纤安装职业学校合作触达新人。背景是建筑业劳动力严重短缺——Kelly 的调研显示 **90% 的数据中心运营商**把人员短缺列为扩张的关键约束，Wu 称其客户工地人均缺口达 400 名工人。
  > 💡 "AI+实体劳动力"的切入点不是替换工人而是给 scarce 工人外挂专家知识，AI 眼镜作为免手持载体第一次有了规模化产业场景；数据中心建设瓶颈从芯片、电力延伸到"装工人"，这条链路正在被资本系统性地补齐。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/07/eric-wus-newest-company-out-of-stealth-since-may-is-going-after-constructions-labor-crunch/)

**AI 芯片性能工程公司 Wafer 完成 400 万美元种子轮，教 AI 写硬件级 kernel 代码**
- Wafer 通过强化学习训练开源模型编写 kernel 代码（直接与硬件交互的底层软件），并为 Claude、GPT 等编码模型加装 agentic harness 以提升其芯片级代码能力，让 AI 充当自动化性能工程师，帮芯片厂和云厂商把模型跑得更快、更省电。公司已完成 **400 万美元种子轮**，投资人包括 Google 首席科学家 Jeff Dean、OpenAI 联合创始人 Wojciech Zaremba、Dropbox 联合创始人 Arash Ferdowsi、Together 内核负责人 Dan Fu 等，目前与 **AMD 和 Amazon** 合作优化其硬件上的 AI 负载。CEO Emilio Andere 指出，性能工程师极度稀缺、新架构迭代快于编译器与 kernel 库，"编译器这次救不了我们"，多数 AI 模型今天的运行成本高于应有水平并浪费大量能源。
  > 💡 在"每瓦特智能"成为算力竞争硬指标的背景下，Wafer 把最不性感却最要命的 kernel 调优变成 AI 可复制的工作；Jeff Dean 与 Zaremba 的天使阵容说明头部实验室也认可"性能工程自动化"是真实瓶颈。
   - 来源: [Wired](https://www.wired.com/story/ai-could-democratize-one-of-techs-most-valuable-resources/) | [Emilio Andere](https://www.linkedin.com/posts/emi-andere_two-updates-from-wafer-today-wafer-pass-share-7450253203218272257-Fid-/)

### 研究关注
**Dr. Claw：以人类决策为锚点的 AI 研究工作空间**
- 论文介绍 Dr. Claw，一个围绕既有命令行编程智能体（Claude Code、Gemini CLI 等）构建的开源工作空间。它通过持久化状态对象、可复用的技能库与多执行器协调，把规划、执行与写作串成一条可追溯、可回滚的链路，并以人在回路的方式保留关键决策。论文以三视图交互场景和故障恢复演练展示其流程，并在固定底层执行器的前提下对比裸命令行智能体。仓库以 AGPL-3.0 发布，含 GPL-3.0 上游组件。
  > 💡 研究流程最大的可信度短板不在生成，而在决策可审计性；Dr. Claw 把可审计性外化为状态对象与技能库，是把 IDE 经验迁移到 AI 协作的关键一步。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2609.00365) | [arXiv](https://arxiv.org/abs/2609.00365)

**扩散增强 LLM：以扩散权重并行采样，无损加速自回归生成**
- 针对 LLM 自回归结构必须逐 token 串行生成的瓶颈，论文提出 diffusion-augmented LLM：保持自回归模型定义的分布不变，把参数拆成两组——用标准 next-token prediction 训练的 AR 权重，加上可**并行生成多个 token** 的轻量扩散权重；扩散权重通过一个简单的 Diffusion Distillation 阶段习得，对现有 LLM 训练管线几乎零侵入。配套的 Ψ-Spec 采样器家族可实现在生成分布不变前提下的无损加速（摘要含无损/有损模式的权衡分析）。
  > 💡 "AR 定义分布 + 扩散并行采样"的解耦设计，让扩散加速不必重训基座模型就能叠加到现有 LLM 上；与 Inception 的原生扩散 LLM 路线形成"改造存量 vs 训练增量"的互补。
   - 来源: [arXiv](https://arxiv.org/abs/2609.04010)

**FlowBalance：用验证器校准的自我引导，替代脆弱的自提升内循环**
- 推理模型从自身 on-policy 经验中自我提升的内循环存在两难：终局验证器监督可靠但稀疏，同模型的密集引导可能强化错误自信或让解法过度集中。论文提出 FlowBalance：对完整响应学习一个归一化分布，用策略的训练时冻结视图在特权上下文下产生 token 级 log-probability 增益，聚合为轨迹级自我引导分数，再与**验证器导出的组优势校准**——正优势轨迹保留引导、负优势轨迹反转引导，从而只放大"被验证认可"的自我信号。
  > 💡 把"自我引导"从无条件信任变成按验证器优势方向调制的信号，是对 self-improvement 最常见失败模式（错误自信的复利）的直接工程解，思路可移植到任何带验证器的 RLVR 管线。
   - 来源: [arXiv](https://arxiv.org/abs/2609.03241)

**以博弈论框架分析多智能体 LLM 协调与反思机制**
- 论文把多智能体 LLM 系统中的编排者—工作者交互建模为一个双层协调博弈，并在有界耦合条件下证明工作者局部更新博弈近似势博弈、均衡松弛由任务分解质量控制。论文进一步把反思视作语义记忆状态上的随机游走，针对自由形式反思给出有限时间上界、最坏情形紧界与持续伤害条件下的正下界，并证明仅观察生成文本的门控无法在文本不可区分环境上一致改进。论文提出 Stochastic Reflective Memory Ascent（SRMA），仅在环境评估风险严格下降时接受候选记忆，并在不同条件下给出几何或多项式收敛保证。基于 Kimi 的系统在 500 个 SWE-bench 实例上解决率达到 72.2%，高于 70.8% 的 mini-SWE-agent 参考基线。
  > 💡 反思机制长期被视为经验调参对象，这篇工作把多智能体协调与记忆更新纳入博弈论与信息论框架，SRMA 为反思提供了带收敛保证的工程基线。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2609.02750) | [arXiv](https://arxiv.org/abs/2609.02750)

### X讨论
**SemiAnalysis 指控 Gemini 3.8 Flash 与 Muse Spark 1.3 "刷榜"，公开基准的宿命论**
- SemiAnalysis 发推称 Gemini 3.8 Flash 与 Muse Spark 1.3 是"迄今最明显的 benchmaxxed 模型"：两者在 Terminal Bench 2.1 上与 GPT-6、Fable 5.1 相当，但在刚发布两周的 **Terminal Bench 4.0 上表现显著更差**。其解释是：TB 2.1 任务全部公开，Meta 和 Google 不会直接拿任务训练，但**会从 RL 环境创业公司购买高度模仿 TB 2.1 任务的数据**，净效果等同直接训练；通常 TB 2.1 的提升应泛化到其他 agent 任务，但这两个模型连 TB 4.0 都不泛化。其判断"这是一切优秀公开基准的宿命——TB 4.0 现在有用只因发布才两周"，并举 Gemini 3.8 Flash 在 DeepSWE 上的表现为例（暗示 Datacurve 靠出售 DeepSWE 形状任务赚了大钱），最后呼吁更多高质量私有基准。
  > 💡 这条推文把"公开基准失效"的机制讲透了：污染不发生在基准本身，而发生在"形状足够接近的训练数据市场"；对评测方的启示是私有基准+轮换任务的经济学价值正在上升，对模型买家的启示是选型应优先看新发布基准上的成绩。
   - 来源: [@semianalysis_](https://x.com/SemiAnalysis_/status/2097112791471522292)

**World Labs 的 Atlas 世界模型实现实时生成与导航，B200 与 MI355X 性能相当**
- World Labs 联合创始人 Justin Johnson 演示：经过密集推理优化后，其空间智能模型 **Atlas 已可实时运行**——交互式地生成并导航世界。他特别指出推理**同时在 NVIDIA B200 与 AMD MI355X 上运行且性能相近**，称两款设备都是"难以置信的工作机器"。李飞飞转发了该演示。
  > 💡 世界模型从"生成一段视频"走到"实时可交互"是质变门槛，而跨 B200/MI355X 的对等性能说明其优化没有绑死 CUDA——对 AMD 在生成式 AI 推理侧的叙事是难得的公开背书。
   - 来源: [@theworldlabs](https://x.com/theworldlabs/status/2097386577236476239) | [@jcjohnss](https://x.com/jcjohnss/status/2097423245742141907) | [@drfeifei](https://x.com/drfeifei/status/2097429460115218568)

**OpenAI 公布千禧年数学难题 Navier-Stokes 完整证明：下一代模型驱动的 Agent 群体消耗 3 千亿 token**
- OpenAI 公布针对千禧年数学难题 Navier-Stokes 存在性与光滑性的**完整证明**，称由一组 Agent 群体使用一款显著强于 GPT-6 Astra 的下一代模型完成；这场为期一周的攻坚消耗约 **3000 亿输出 token，按 API 牌价折合约 2250 万美元算力**，该模型近期还攻克了多个其他未解问题。事件另一面：NYU 数学教授 Tristan Buckmaster 同日宣布与 Anthropic 数学家 Levent Alpöge 合作（借助 Codex 与 Claude）的三个证明及针对同一问题的初步结果，并在声明中指出 OpenAI 的平行工作**在其成果公开发表前即已建立在他们的工作之上**，引发学术优先权争议；OpenAI 方面称两个证明相互独立。
  > 💡 一周 3000 亿 token 的"燃烧式研究"标志着 AI 数学研究进入重投入时代，而"Buckmaster→OpenAI"的优先权之争比证明本身更值得行业警惕——当模型可以实时消化预印本与私下交流的思路，学术界的首发保护机制近乎失效。
   - 来源: [@openai](https://x.com/OpenAI/status/2097374640582668336) | [OpenAI](https://openai.com/index/navier-stokes-solution/) | [TechCrunch](https://techcrunch.com/2026/09/08/openai-fought-dirty-on-career-making-math-problem-says-nyu-mathematician/) | [Buckmaster](https://mastodon.social/@tristanbuckmaster/117233413705701198)

**vLLM 推出 Hybrid HiSparse 内存分层，让 GLM 5.3 在 8×H200 节点上跑满 100 万上下文**
- vLLM 团队发布 GLM 5.3 优化系列第一篇，介绍将 HiSparse 作为受压驱动的内存层与 Hybrid Memory Allocator 和 KV offloading 组合，在 GLM 5.3 请求 KV 超出显存时仍可继续解码，从而维持高并发。文章指出，在单节点 8×H200 的紧内存配置下，Hybrid HiSparse 使 GLM 5.3 首次得以在该硬件上跑满 100 万上下文长度，并在不同上下文长度下显著提升并发。
  > 💡 HiSparse 把稀疏性从权重扩展到 KV 生命周期管理，让单节点能承载百万级上下文的高并发 Agent 推理，意味着长上下文服务的边际硬件成本有望继续下降。
   - 来源: [vLLM Blog](https://vllm.ai/blog/2026-09-08-glm53-part1-hybrid-sparse-offloading)

**Deft Robotics 开售轮式人形机器人 Simba：整机 3.49 万美元起，主打汽车产线实战**
- Deft Robotics 开放其"物理 AI 统一部署平台"：硬件现货开售——**Simba 中载轮式人形机器人整机 34900 美元/台**（已售 49 台）、可形变夹爪 34 美元/对、左右电池包各 399 美元等配件均有销量；软件 Deft OS 处于 beta。公司称硬件平台已在**真实汽车制造环境**中经过产线验证，兼容 PI 0.5/0.6/0.7 等最新机器人基础模型，定位是补上"前沿模型跑得快、现实自主性跟不上"之间缺失的部署、干预、失败学习与持续改进基础设施。
  > 💡 把轮式人形机器人按"电商 SKU"明码标价开卖（且显示真实销量），是具身智能从 demo 走向标准化商品的重要信号；对标四足/臂类产品的价格锚点，3.5 万美元的整机定价把人形平台拉进了产线设备的采购预算区间。
   - 来源: [@shinheeshanelee](https://x.com/shinheeshanelee/status/2097355083029852404) | [@shinheeshanelee](https://x.com/shinheeshanelee/status/2097355268766187560) | [Deft Robotics](https://www.deftai.co/hardware-products)

---
*更新时间: 2026-09-09 06:45*