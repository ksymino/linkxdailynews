## 10月28日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 20 条

---

## 要点汇总

- 模型前沿：Google DeepMind 发布 Genie 4：实时生成动态世界并呈现环境反馈; OpenAI 发布 GPT-6.1 Terra：强化视觉推理与计算机操作，主打价格与速度; AREX-2 以长程反思推动持续改进，探索智能体自主进化路径
- 产业动态：OpenAI 扩大与 Oracle 合作：将商业应用及 AI Agent 引入 ChatGPT; 报道称 Nvidia 将向 Meta 投资 30 亿美元，深化 AI 硬件与模型合作; AMD 与 vLLM Semantic Router 推出 d3-ultra：开放多模态决策模型，支持逐答案概率与视频跟踪
- 算力追踪：Anthropic、SpaceX 与 Meta 同期筹资：AI 资本规模或接近四分之一万亿美元; NVIDIA 提交首个 Rubin NVL72 Kimi K3 推理结果：2.8 万亿参数下超 850 Token/s/用户
- 初创&融资：财富管理 AI 操作系统商 Nevis 获 7000 万美元 B 轮融资，EQT 领投; 工程机械自动驾驶商 Bedrock 获 6 亿美元 C 轮融资，谷歌与 Emergence 领投; AI 云服务商 Hyperbolic 获 3000 万美元 A+ 轮融资，Walden Catalyst 领投; Disruptive 募集 100 亿美元盲池基金：拟投资至少 10 家后期企业，单笔最高 10 亿美元; AI 虚拟细胞服务商 Rivercell 获 2200 万欧元种子轮融资：构建细胞世界模型与自动化实验数据平台
- 研究关注：SynthAPI 揭示工具型智能体数据扩展规律：环境多样性优于堆叠任务; Rollback 回溯世界模型决策点，三项机器人任务成功率最高提升 11.85%; Ropedia 发布六项研究，探索第一视角视频到机器人训练数据转换; RoboJev-27B 开放机器人成功判定：同机型平衡准确率达 95.2%
- X讨论：中国科学多模态大模型被指参与攻克数学难题，具体贡献尚待核实; OpenAI 与 Anthropic 宣称模型反驳指数时间假设：数学界启动跨学科审查; AxiomMathAI 用多智能体形式化有限简单群分类：推进 Lean 证明并修补历史缺口

---

## 📖 详细参考

### 模型前沿
**Google DeepMind 发布 Genie 4：实时生成动态世界并呈现环境反馈**
- Google DeepMind 发布 Genie 4，并将其定位为该公司迄今最逼真、交互能力最强的世界模型。用户可在实时生成的动态环境中观察场景变化与声音，以及其中人物的动作、反应和说话表现。
  > 💡 Genie 4 将重点放在实时环境反馈与人物交互上，显示世界模型正从静态场景生成进一步走向可持续响应和互动式模拟。
   - 来源: [@googledeepmind](https://x.com/GoogleDeepMind/status/2115114028338962672)

**OpenAI 发布 GPT-6.1 Terra：强化视觉推理与计算机操作，主打价格与速度**
- OpenAI 发布 GPT-6.1 Terra，定位为快速、高效的模型，重点增强细致视觉推理、精确计算机操作和自然写作。官方称该模型面向提案起草、技术图纸理解、表单填写和视频编辑等日常工作，其能力较 GPT-5.6 Terra 明显提升。GPT-6.1 Terra 的价格为每百万输入 Token 1 美元、每百万输出 Token 5 美元，接近 GPT-6.1 Sol 的一半，并约为 GPT-6 Luna 的 10 倍。
  > 💡 GPT-6.1 Terra 以低于上一代 Terra 的价格提供视觉和计算机操作能力，适合需要兼顾效率与成本的 API 开发者及高频工作流。
   - 来源: [Simon Willison's Weblog](https://simonwillison.net/2026/Oct/26/gpt-61-terra)

**AREX-2 以长程反思推动持续改进，探索智能体自主进化路径**
- 机器之心发布 AREX 研究小组推出 AREX-2 模型的消息。该模型面向持续迭代改进算法的问题，研究人员来自智源研究院、中国科技大学和中国人民大学等多个机构。
  > 💡 现有证据仅确认 AREX-2 的发布及其持续改进方向，尚不足以验证其相对 1.6T 参数模型的性能优势或 RSI 效果，相关结论需等待完整技术数据与评测结果。
   - 来源: [机器之心](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw%3D%3D&mid=2651070489&idx=3&sn=54e92cb2108bbc579873c8ccfaa114d3&chksm=85c134e1e2415409bf80e48782d788f849a4467be328cd47f81ff42f9aeb0190e80614e6d7a4&scene=0&xtrack=1)

### 产业动态
**OpenAI 扩大与 Oracle 合作：将商业应用及 AI Agent 引入 ChatGPT**
- OpenAI 与 Oracle 扩大合作，将商业应用和 AI Agent 引入 ChatGPT。Oracle 也将利用这一合作推出新的产品。
  > 💡 此次合作把企业应用入口与智能体能力直接接入 ChatGPT，有望强化 Oracle 的产品分发，同时为 OpenAI 增加企业场景入口。
   - 来源: [OpenAI News](https://openai.com/index/oracle-apps-in-chatgpt)

**报道称 Nvidia 将向 Meta 投资 30 亿美元，深化 AI 硬件与模型合作**
- 据报道，Nvidia 将以 30 亿美元参与 Meta Platforms 的股权发行。双方将扩大技术合作，以提升 Meta 的 Muse 个人智能体应用及基础模型性能。Meta 还计划扩大 Nvidia Vera Rubin AI 硬件与 Vera 中央处理器的部署，为下一代 AI Agent 提供算力支持。
  > 💡 股权投资与硬件部署绑定，显示 Nvidia 正通过资本和技术合作巩固 Meta 的算力生态，并为下一代智能体争夺基础设施入口。
   - 来源: [The Information](https://www.theinformation.com/briefings/nvidia-invests-3-billion-meta-deeper-ai-partnership)

**AMD 与 vLLM Semantic Router 推出 d3-ultra：开放多模态决策模型，支持逐答案概率与视频跟踪**
- AMD 与 vLLM Semantic Router 团队推出 d3-ultra，面向开放多模态决策场景。该模型提供逐答案概率、视觉定位和视频跟踪能力，并基于 AMD Instinct GPU 完成训练与服务，权重以 Apache-2.0 协议发布在 Hugging Face。
  > 💡 d3-ultra 将逐答案概率、视觉定位和视频跟踪整合到开放模型中，有望扩展多模态决策模型在生产环境中的可解释性与适用范围。
   - 来源: [@vllm_project](https://x.com/vllm_project/status/2114920881525051889)

### 算力追踪
**Anthropic、SpaceX 与 Meta 同期筹资：AI 资本规模或接近四分之一万亿美元**
- 据报道，Anthropic、SpaceX 和 Meta Platforms 同日公布大规模筹资计划，合计规模可能接近四分之一万亿美元。Anthropic 已提交 S-1，但没有披露拟募资额；此前 Reuters 报道该金额可能高达 1000 亿美元。Meta 计划通过股票发行筹集最多 950 亿美元，SpaceX 则与 Apollo Global Management 管理的实体达成 400 亿美元融资协议，用于租赁数据中心 GPU，该协议被 SpaceX 称为史上规模最大的 GPU 融资。
  > 💡 头部企业集中吸收巨额资本，将进一步挤压较弱 AI 企业和新型云厂商的融资空间，AI 基础设施竞争也可能从算力采购延伸到资本供给能力。
   - 来源: [The Information](https://www.theinformation.com/articles/anthropic-spacex-meta-cash-grabs)

**NVIDIA 提交首个 Rubin NVL72 Kimi K3 推理结果：2.8 万亿参数下超 850 Token/s/用户**
- NVIDIA 提交了首个 Rubin NVL72 上的 Kimi K3 推理结果，在 2.8 万亿参数规模下达到每秒超过 850 个 Token/用户。该配置在 vLLM 上的吞吐量提升超过 3 倍，Rubin Software 1.0 也即将正式发布。
  > 💡 这一结果展示了新一代 NVIDIA 基础设施对超大参数模型的推理潜力，但目前信息仅来自 SemiAnalysis 转述的 NVIDIA 提交结果，实际表现仍需更多独立验证。
   - 来源: [@semianalysis_](https://x.com/SemiAnalysis_/status/2115126872455475476)

### 初创&融资
**财富管理 AI 操作系统商 Nevis 获 7000 万美元 B 轮融资，EQT 领投**
- 财富管理 AI 操作系统服务商 Nevis 获得 7000 万美元 B 轮融资，由 EQT 殷拓集团领投，QuantumLight、The Charles Schwab Corporation、Ribbit Capital、Iconiq Capital 和 Sequoia Capital 红杉参投。Nevis 面向美国独立理财顾问，以 AI 智能体连接 CRM、账户托管、会议和签约等系统，可自动完成会议纪要、客户跟进、方案起草与开户等行政工作。公司于 2025 年收购 Ledra AI 以补强语音交互能力，平台已通过 SOC 2 Type II 安全审计。
  > 💡 Nevis 将 AI 智能体直接嵌入独立理财顾问的行政流程，并引入 Schwab 等机构参投，显示财富管理垂直软件正获得金融产业资本支持。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706634)

**工程机械自动驾驶商 Bedrock 获 6 亿美元 C 轮融资，谷歌与 Emergence 领投**
- 工程机械自动驾驶技术研发商 Bedrock 获得 6 亿美元 C 轮融资，由 Emergence Capital Partners 与谷歌联合领投，Perry Creek Capital、淡马锡、Bessemer Venture Partners、英伟达和 Eclipse Ventures 等机构参投。Bedrock 主要研发无人操作的全自动挖掘系统，通过软硬件结合的套件赋能挖掘机等工程机械。
  > 💡 本轮融资规模和参投方阵容为工程机械自动驾驶提供了较强资本支撑，也反映该方向正从单一设备自动化向软硬件协同方案推进。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706628)

**AI 云服务商 Hyperbolic 获 3000 万美元 A+ 轮融资，Walden Catalyst 领投**
- AI 云服务商 Hyperbolic 获得 3000 万美元 A+ 轮融资，由 Walden Catalyst 领投，Cambium Capital、Vista Equity Partners、General Catalyst Partners 和戴尔参投。Hyperbolic 通过整合全球 GPU 计算资源并利用区块链技术，提供可验证且安全的 AI 服务，其 AI 推理服务使用异构计算优化跨硬件的张量运算器，并允许开发者通过 API 调用开源 AI 模型。
  > 💡 Hyperbolic 以异构 GPU 聚合和低成本推理服务切入 AI 云市场，本轮融资将为其扩展计算资源整合及推理基础设施提供资金支持。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706688)

**Disruptive 募集 100 亿美元盲池基金：拟投资至少 10 家后期企业，单笔最高 10 亿美元**
- Disruptive 宣布设立规模达 100 亿美元的首只盲池基金，计划投资至少 10 家后期企业，单笔投资最高 10 亿美元。基金主要瞄准资本密集的 AI 与国防领域，机构投资者将在不知道具体投资标的的情况下出资承诺资金。Disruptive 过去曾投资 Palantir、Airbnb、Spotify、Groq 和 ElevenLabs。
  > 💡 大额盲池基金将 Disruptive 从逐笔项目投资推向集中组合配置，反映其正在扩大对资本密集型 AI 与国防赛道的长期下注能力。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/27/disruptive-raises-10b-fund-to-make-big-bets-on-at-least-10-companies)

**AI 虚拟细胞服务商 Rivercell 获 2200 万欧元种子轮融资：构建细胞世界模型与自动化实验数据平台**
- Rivercell 获得 2200 万欧元种子轮融资，由 HV Capital 领投，Alven Capital、Bpifrance 和 Hardware Club 参投。Rivercell 构建 AI 虚拟细胞 AIVC 细胞世界模型及配套自动化细胞响应数据平台，通过自建自动化湿实验体系生成大规模时序多模态单细胞扰动数据集。其模型用于预测药物和基因干预下人体细胞动态变化，适用范围包括肿瘤、免疫和罕见病等方向。
  > 💡 Rivercell 将生成式细胞模型、自动化湿实验和扰动数据平台整合为研发基础设施，试图以数据闭环降低新药研发中的湿实验成本。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706685)

### 研究关注
**SynthAPI 揭示工具型智能体数据扩展规律：环境多样性优于堆叠任务**
- 论文提出 SynthAPI 流水线，通过工具、任务和工具所操作数据库三个维度控制合成环境的多样性。研究团队在 849 个不同规模的模型上系统调整生成控制变量，覆盖 458,752 个任务，并据此推导工具型智能体下游泛化能力的扩展规律。随着数据预算增加，扩大工具和数据库多样性比单纯增加任务数量更有效，提高数据复杂度可带来更大收益；按这些规律扩展后，智能体在四项评测基准上超过既有数据训练方法。
  > 💡 这项结果将工具型智能体的数据竞争焦点从任务数量转向环境结构与复杂度，为合成数据预算配置提供了可量化依据。
   - 来源: [arXiv cs.LG](https://arxiv.org/abs/2610.37648v1)

**Rollback 回溯世界模型决策点，三项机器人任务成功率最高提升 11.85%**
- 论文提出 Rollback，将动作条件世界模型用于回溯关键决策点、分支探索替代动作并比较结果，从而把反事实结果蒸馏为动作级监督，无需单独学习价值模型。该方法以轻量 LoRA 流程利用真实机器人执行数据修正世界模型动力学，并形成世界模型与策略改进相互强化的训练循环。在取物、抛球和桌面冰壶三项真实任务上，Rollback 相对最强基线的成功率分别绝对提升 10.67%、11.11% 和 11.85%；其从低于人类水平的遥操作演示起步，在 8 小时内训练的抛球和桌面冰壶任务中超过人类玩家的平均成功率。
  > 💡 Rollback 的价值在于把世界模型从只向前推演的环境替身转化为可回溯的反事实工具，并以真实执行持续校正动力学；这为降低机器人策略改进对物理模拟器和真实试错的依赖提供了路径。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2610.36068)

**Ropedia 发布六项研究，探索第一视角视频到机器人训练数据转换**
- 机器之心发布 Ropedia 的六项研究成果，关注如何利用第一视角视频记录改进机器人能力。相关研究涉及从取杯等动作视频中提取相机轨迹、手部动作和杯子位置变化，并将这些信息转化为机器人训练数据。
  > 💡 第一视角视频蕴含相机运动、操作动作和物体状态变化，若能稳定转换为结构化训练数据，可扩大机器人训练数据来源；现有证据尚未给出六项成果的具体方法与量化效果。
   - 来源: [机器之心](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw%3D%3D&mid=2651070489&idx=1&sn=979e5eb39baa3b368af94c9c73dd2afc&chksm=8534c3ed2391021646459c66777cb61f636aee4c773c1ce45a22376184a67a88fc21d2b85d60&scene=0&xtrack=1)

**RoboJev-27B 开放机器人成功判定：同机型平衡准确率达 95.2%**
- 论文发布开放权重视觉语言模型 RoboJev-27B，以任务指令、10 帧操作尝试视频及可用的辅助相机末帧为输入，预测机器人是否完成任务。该模型基于 JEV-27B-VL，仅以 rank-32 LoRA 适配语言模型并冻结视觉编码器，使用 52,598 条 episode 记录训练；在同一机器人型号的 268 个留出 episode 上，平衡准确率达到 95.2%，AUROC 为 0.993。RoboJev-27B 在未见实验室和机器人的 459 个 episode 上取得 0.890 AUROC，在社区采集的 135 个 episode 上准确率达到 93.3%；其单张 H100 串行处理每个 episode 的中位时间为 0.26 秒。项目同时开放推理代码与包含 20,628 次预测、29 个模型及协议条目的透明评测，但与 API 视觉语言模型的比较因输入帧数不同而并非完全同条件。
  > 💡 RoboJev-27B 展示了开放模型在机器人成功检测上的可用精度和较低推理开销，适合用于批量视频标注与评测；其跨机器人泛化仍弱于同机型表现，且公开预测集有助于第三方复核。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2610.33718)

### X讨论
**中国科学多模态大模型被指参与攻克数学难题，具体贡献尚待核实**
- 相关报道标题称，中国数学家攻克世界级数学难题过程中使用了中国科学多模态大模型。现有证据仅提供这一标题，未提供研究团队、模型名称、论文、题目或验证结果等可核验信息。相关成果及其具体贡献目前无法从所给材料中确认。
  > 💡 在缺少论文、方法和独立验证的情况下，不宜将标题中的成果表述视为已经充分确认的数学突破。
   - 来源: [新智元](https://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA%3D%3D&mid=2652738252&idx=3&sn=da6fafe36fe204457e8e9e750df86fe9)

**OpenAI 与 Anthropic 宣称模型反驳指数时间假设：数学界启动跨学科审查**
- OpenAI 发布了三个长期数学难题的解答，其中一项据称反驳了计算机科学中的指数时间假设 ETH。Anthropic 数学家 Levent Alpöge 认为 OpenAI 的解答可能基于既有工作，Anthropic 随后也公布了对 ETH 的反驳。OpenAI 针对数学、计算机科学和物理学分别组织了不同的成果发布流程，MIT 教授 Ryan Williams 与 UC San Diego 的 Russell Impagliazzo、Ramamohan Paturi 参与解释相关证明。Williams 表示愿意与前沿实验室合作，推动计算机科学界理解和消化这一结果。
  > 💡 前沿模型开始触及计算复杂性领域的核心假设，但成果影响仍取决于证明公开、同行审查和社区协作能否形成可验证的学术结论。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/27/frontier-ai-labs-say-their-models-refuted-the-exponential-time-hypothesis-what-does-that-mean)

**AxiomMathAI 用多智能体形式化有限简单群分类：推进 Lean 证明并修补历史缺口**
- AxiomMathAI 使用多智能体协作，将有限简单群分类的证明形式化为 Lean 项目。相关工作还处理了既有证明中的历史缺口。该项目以大规模数学证明形式化为目标，涉及对长篇证明结构的拆分、验证和工程化组织。
  > 💡 多智能体系统若能在 Lean 中完成大型数学证明并修补历史缺口，将展示模型从辅助推导走向可检查形式化成果的潜力。
   - 来源: [@theturingpost](https://x.com/TheTuringPost/status/2115114839450546525)


---
*更新时间: 2026-10-28 11:15*