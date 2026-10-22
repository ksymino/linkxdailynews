## 09月08日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 13 条

---

## 要点汇总

- 产业动态：MiniCPM5-2B 登顶 4B 以下开源模型智能指数：2.6B 参数拿下 15 分; vLLM 通过 TT Plugin 将 Tenstorrent 加速器纳入推理后端
- 算力追踪：Anthropic 据报 11 个月签下 5170 亿美元算力合同，锁定至少 14.8GW; SemiAnalysis：TPU 推理外溢提速，InferenceX 显示每美元性能提升最高达 50%
- 初创&融资：为 agent 打造操作系统，Omarchy 背后基金会再获 51 万美元资助，累计承诺达 1550 万美元; 神经认知世界模型公司寰宇心生 WorldMind 完成数千万元种子轮融资
- 研究关注：语言模型弃权行为被证实由内部置信度因果驱动，可用 activation steering 定向调节; Agent 记忆可迁移性实测：固定 schema 知识图谱换模型几乎无损，模型自写笔记波动达 13 分; Random Attention：以随机淘汰替代 KV cache 评分，在 vLLM 上吞吐提升 32–43%; SharedSAE：用一份共享特征字典同时解释多个语言模型; 论文以缓存级干预拆解混合语言模型：注意力负责“查什么”，循环状态负责“怎么答”
- X讨论：宇树突破：全球首个由实时世界模型驱动的全自主人形机器人格斗; AMD 在 19 天内通过软件优化把 vLLM 在 MI355X 上的性能提升 11 倍

---

## 📖 详细参考

### 产业动态
**MiniCPM5-2B 登顶 4B 以下开源模型智能指数：2.6B 参数拿下 15 分**
- OpenBMB 发布的 MiniCPM5-2B 在 Artificial Analysis Intelligence Index v4.2 上得分 **15**，是总参数 4B 以下的开源权重模型中的最高分（次佳为 Granite 4.2 3B 的 11 分），比参数量约 3 倍于它的 Ling 3.0 Tiny（16 分）仅低 1 分。MiniCPM5-2B 是一款 **2.6B 参数**的稠密推理模型，支持文本输入与文本输出，采用 Apache 2.0 协议发布。据官方发布，该模型在 Artificial Analysis Agentic Index 上得 **20 分**，在覆盖编码、数学、长上下文理解、工具调用与 agent 任务的 **34 项基准上平均 53.9 分**，并同步开源了训练数据、训练配方与 RL 栈。
  > 💡 4B 以下参数段位的开源模型智能水平被 MiniCPM5-2B 刷新，意味着高效小模型阵营在推理任务上的竞争力进一步上行，对边缘与端侧部署场景具有直接参考意义。
   - 来源: [@artificialanlys](https://x.com/ArtificialAnlys/status/2096955784592797998) | [@OpenBMB](https://x.com/OpenBMB/status/2096970974247956501) | [ModelScope](https://modelscope.cn/models/OpenBMB/MiniCPM5-2B)

**vLLM 通过 TT Plugin 将 Tenstorrent 加速器纳入推理后端**
- vLLM 团队发布 vLLM TT Plugin，将 Tenstorrent 加速器以 out-of-tree 平台插件的形式接入 vLLM；只要环境中可导入 ttnn（TT-Metal），Tenstorrent 硬件就会被自动注册为 vLLM 平台，对外仍保持 OpenAI 兼容 API 与请求格式。文章指出，Tenstorrent 的网格架构与 GPU 差异显著，因此插件内部按阶段（prefill/decode）调度、在 Galaxy 上采用单进程数据并行、并在采样环节优先在设备端执行并保留主机端回退，解码阶段的重叠则通过异步读回而非异步执行模型实现。
  > 💡 vLLM 把 GPU 假设之外的多核网格加速器纳入插件体系，意味着 LLM 推理引擎正在被抽象成可承载多种硬件拓扑的调度框架，国产/非 CUDA 后端的接入门槛被显著压低。
   - 来源: [vLLM Blog](https://vllm.ai/blog/2026-09-07-vllm-tt-plugin)

### 算力追踪
**Anthropic 据报 11 个月签下 5170 亿美元算力合同，锁定至少 14.8GW**
- 据报道，Anthropic 在**11 个月内签署了总额最高 5170 亿美元的算力合同**：自 2025 年 10 月以来锁定至少 **14.8GW** 算力（此前仅有 1-2GW），并开始规划自建数据中心。总量上仍低于 OpenAI 到 2030 年 30GW 的目标，但 Anthropic 的合同期限普遍更长，直接对比并不容易；两家目前都无法仅凭收入覆盖这些承诺——Anthropic 年化收入超 650 亿美元（Bloomberg 口径），OpenAI 截至 7 月超 400 亿美元。颇具对照意味的是：Anthropic CEO Dario Amodei 年初还警告竞争对手"并不真正理解自己承担的风险"，如今 Anthropic 自己加入追赶；Sam Altman 则反过来警告 neo-cloud 供应商的"不可持续的愚蠢"，认为技术进步可能让今天昂贵的项目变成坏赌注。
  > 💡 5170 亿美元的锁定承诺与 650 亿美元年化收入之间的缺口，本质是把"模型进步速度"当成了抵押品——这轮算力军备竞赛的真正风险变量不是 GPU 交付，而是收入曲线能否持续陡峭。
   - 来源: [The Decoder](https://the-decoder.com/anthropic-reportedly-signs-517-billion-in-compute-deals-after-dario-amodei-warned-rivals-about-reckless-risk/)

**SemiAnalysis：TPU 推理外溢提速，InferenceX 显示每美元性能提升最高达 50%**
- SemiAnalysis 发布 InferenceX 首份 **TPUv7 Ironwood 第三方推理实测**（Official Preview）：在与 B200/B300 的同口径对比中，Ironwood 在 Pareto 曲线大部分区间实现**每美元性能最高 50% 的优势**，文章同时从 Google 内部 TCO 与客户实际支付的外部 TCO 两侧拆解经济性。文章判断 TPU 栈外部化正在全面加速、客户群持续扩张，Anthropic 已是 TPU 最大用户（预计到 2029 年用量超过 DeepMind 自用），Ironwood 正在实质性缩小 CUDA 护城河。
  > 💡 把 TPU 与 CUDA 的竞争直接量化为「每美元性能」和「推理外溢速度」，意味着 SemiAnalysis 认为 TPU 的真正威胁不在训练峰值，而在推理性价比与企业客户的迁移门槛。
   - 来源: [@semianalysis_](https://x.com/SemiAnalysis_/status/2097054644258103448) | [SemiAnalysis](https://newsletter.semianalysis.com/p/tpu-inferencex-full-steam)

### 初创&融资
**为 agent 打造操作系统，Omarchy 背后基金会再获 51 万美元资助，累计承诺达 1550 万美元**
- DHH（David Heinemeier Hansson）宣布，支撑 Omarchy（定位为**首个从底层为 agent 打造的操作系统**）的 Omacom Foundation 再获约 **51 万美元**资助：OpenRouter 以 Distinguished Corporate Patron 身份提供 **15 万美元 tokens**，用于驱动构建、测试与维护 Omarchy 的 agent，且**所有赞助 tokens 均经由 OpenRouter 统一路由**、按团队与模型合理分配；Four Technologies 以**三年每年 10 万美元**（合计 30 万）加入，其余来自约 500 名个人 patron。至此基金会的认捐与捐赠总额约 **1550 万美元**。
  > 💡 用"模型 tokens 而非现金"作为开源基础设施的主要燃料，是 agent 时代开源可持续性的新样本——当修 bug、审贡献的成本被 agent 大幅摊薄，企业赞助方买到的是一条随模型进步自动升值的维护通道。
   - 来源: [Omarchy](https://omarchy.org/news/2026/09/omacom-foundation-raises-another-half-a-million-dollars/) | [@dhh](https://x.com/dhh/status/2097060929615622337)

**神经认知世界模型公司寰宇心生 WorldMind 完成数千万元种子轮融资**
- 寰宇心生 WorldMind 是一家神经认知世界模型公司，**2026 年 9 月注册当月**即完成数千万元人民币种子轮融资，投资方为元生资本，点石资本担任独家财务顾问，资金用于核心技术研发、世界模型训练基础设施、多模态数据采集体系与团队扩张。技术路线上，公司自称不做"下一帧预测器"式的状态预测模型，而是构建"记忆—知识—推演—校准"四模块认知闭环（神经记忆系统、世界知识系统、神经推演系统、神经校准机制），主张通过真实交互持续修正模型认知。在 **World Arena 2.0（IROS 2026）** 评测中，其 Track 1（世界模型即数据引擎）位列前三、Track 2（世界模型即仿真器）排名第二。据点石资本介绍，团队由 1999 年出生的 CEO 与 26 岁长聘副教授等 AI、机器人与脑科学背景成员组成。
  > 💡 在「世界模型」赛道里，元生资本选择押注一家自称「神经认知」路线并把融资主要砸向训练基础设施与多模态数据的种子轮团队，暗示其更看重数据-算力闭环而非纯算法演示。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14704105) | [点石资本](https://mp.weixin.qq.com/s/K2n6010O1YdzAXeu8NmGfQ)

### 研究关注
**语言模型弃权行为被证实由内部置信度因果驱动，可用 activation steering 定向调节**
- 论文设计四阶段实验范式检验"模型是否真的使用自身置信信号决定作答或弃权"：基线阶段先在无弃权选项下引出置信度；第二阶段发现 LLM 弃权时对内部置信施加**隐式阈值**，置信的效应量约比备选机制大一个数量级；第三阶段用 activation steering 提供因果证据——**增强或抑制置信表征会相应减少或增加弃权**，中介分析确认"置信度重新分布"是主要机制；第四阶段指示模型按不同置信水平弃权，模型行为随之调整，说明其能读出置信并据此设定弃权策略。此外，独立第二次前向产生的言语置信（verbal confidence）在所有模型上都能独立预测弃权；激活解码显示 token 对数概率与言语置信都是更丰富内部表征的**有损读出**。
  > 💡 这把"模型会不会元认知"从行为观察推进到因果操控层面——如果置信表征可以被 steering 定向调节，校准与弃权策略就有了比 prompt 更底层的控制旋钮，对高风险场景的可靠性工程有直接意义。
   - 来源: [Nature Machine Intelligence](https://www.nature.com/articles/s42256-026-01293-x)

**Agent 记忆可迁移性实测：固定 schema 知识图谱换模型几乎无损，模型自写笔记波动达 13 分**
- 论文研究 agent 记忆的"可迁移性"：同一段 agent 历史以四种形式存储——原文保留供长上下文阅读（LC-RAW）、分块供检索（RAG）、由模型压缩为自然语言笔记（NOTES）、归一化为固定 schema 知识图谱（KG-fixed），然后更换读取模型的对照实验。在 **48 个合成历史、两个 10B 以下开源模型**的设置下：KG-fixed 在换写入模型后准确率仅变化 **+0.0004**，几乎不受迁移影响；而 NOTES 呈现高模型耦合，同一对模型之间迁移会带来 **+9.91 或 -13.28 分**的方向性差异；混合 embedding 版本则可能直接破坏检索。
  > 💡 对多模型/多供应商 agent 的工程含义直接：把记忆沉淀进结构化 schema 而非模型自写笔记，是升级模型不"失忆"的最稳妥路径；模型写的笔记在跨模型迁移时是最大风险点。
   - 来源: [arXiv](https://arxiv.org/abs/2609.05339) | [@dair_ai](https://x.com/dair_ai/status/2096985097450999839)

**Random Attention：以随机淘汰替代 KV cache 评分，在 vLLM 上吞吐提升 32–43%**
- 论文指出大语言模型在长链推理时 KV cache 占用成为严重内存瓶颈，并质疑既有压缩方法普遍采用的“为每个缓存 token 打分并保留高分”这一选择信号。作者提出 Random Attention：在每个注意力头内部对 prompt 之外的 token 进行均匀随机淘汰、不计算任何分数；在四个模型与六项推理任务的对照中，其表现与最强既有淘汰器持平，并在 vLLM 部署中相对后者实现 32–43% 的吞吐提升。作者将这一现象归因于 prompt 才是 cache 中最脆弱的部分，而推理 trace 在文本层和注意力头层都自带冗余，因此一旦 prompt 安全，随机抽样即可保留足够多的关键信息。代码已在 SalesforceAIResearch 名下 GitHub 仓库公开。
  > 💡 该工作把 KV cache 压缩的争论从“如何更好打分”拉回到“是否需要打分”，对工程实践的直接含义是：推理服务可以省去打分开销与对应实现复杂度，靠结构冗余换取吞吐；但其在长上下文极端分布上的稳定性仍需独立验证。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2609.03430) | [arXiv](https://arxiv.org/abs/2609.03430)

**SharedSAE：用一份共享特征字典同时解释多个语言模型**
- 论文针对稀疏自编码器（SAE）需要为每个模型单独训练并重复标注潜在特征的问题，提出 SharedSAE：由跨模型共享的特征字典加上各模型专属的编解码器组成。作者表示，与丢弃激活幅值、并要求推理时同时持有所有模型的既有方案不同，SharedSAE 仅对选择分数做归一化以保留幅值，并使用模型 dropout 支持单模型推理。该方法在四个 1B 规模、来自不同家族与分词器的基础语言模型上训练，平均解释方差达到专用 SAE 的 96.6%。论文还报告其潜在激活在跨模型相关性上比事后对齐的独立 SAE 高 1.8 倍，潜在描述可在模型间迁移，字典冻结后新模型仍能以接近专用 SAE 的重建质量适配。
  > 💡 SharedSAE 把“可解释性资产”从“按模型复制”转向“按字典共享”，降低了多模型机制研究的标注与训练成本，但也意味着跨模型描述的有效性需要新的评测标准来检验。
   - 来源: [arXiv](https://arxiv.org/abs/2609.04344)

**论文以缓存级干预拆解混合语言模型：注意力负责“查什么”，循环状态负责“怎么答”**
- 论文针对同时使用注意力与固定大小循环状态的混合语言模型，提出两种缓存级干预：split-prefill 在已预填充的上下文上只保留 KV cache 或只保留循环状态再生成答案；state-swap 在单次前向中把一份上下文的 KV cache 与另一份的循环状态组合使用。作者在 Qwen3.5 与 Falcon-H1 上观察到两通道功能高度分化：精确检索只依赖注意力通道，在仅保留循环状态时准确率塌缩至零；而输出语言与人设风格则主要依赖循环状态，仅保留 KV 时语言准确率跌至约 1%。state-swap 实验进一步表明答案的取值随 KV 侧改变、语言风格随循环侧改变。论文还指出循环状态能够接受并未出现在上下文中、但与已见词共享语义或部件的词。
  > 💡 该工作将混合架构的“两条记忆通道”从工程取舍提升为功能划分，为后续 KV/recurrent 比例、压缩策略与可控生成提供了清晰的因果依据，但具体到不同模型族是否仍成立还需扩展实验。
   - 来源: [arXiv](https://arxiv.org/abs/2609.04434)

### X讨论
**宇树突破：全球首个由实时世界模型驱动的全自主人形机器人格斗**
- 宇树科技宣布实现“全球首个实时世界模型驱动的全自主人形机器人格斗”。该方案基于其自研的 UnifoLM-X2-1.0，被官方描述为突破了世界-动作基础模型在即时规划、决策与动态交互执行上的瓶颈。系统被宣称为具备高动态、强交互与对未来进行实时预测与规划的能力，从而实现人形机器人的完全自主格斗。
  > 💡 宇树将世界模型引入实时格斗，强调对未来轨迹的即时预测与决策，把高动态对抗视为具身模型的压测场景，体现出从静态演示走向强交互闭环的产品路径。
   - 来源: [@unitreerobotics](https://x.com/UnitreeRobotics/status/2096932273602048258)

**AMD 在 19 天内通过软件优化把 vLLM 在 MI355X 上的性能提升 11 倍**
- SemiAnalysis 称，AMD 在不到 19 天的时间里，将 vLLM 在 MI355X 面向 Agent 负载上的性能提升至原来的 11 倍，相关基准使用 MiniMax M3 模型。此次提升全部来自软件层面的优化，重点改进了长上下文注意力算子，并辅以其他优化项。SemiAnalysis 以此说明「一次购入硬件、持续通过软件优化获得性能提升」是 ROCm 栈的核心卖点。
  > 💡 11 倍来自纯软件迭代，把 ROCm 的竞争叙事从硬件参数转向「时间维度上的性能增量」，直接挑战了 CUDA 生态以成熟软件栈构筑的迁移成本壁垒。
   - 来源: [@semianalysis_](https://x.com/SemiAnalysis_/status/2097007346421531008)

---
*更新时间: 2026-09-08 07:35*