## 09月16日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 19 条

---

## 要点汇总

- 模型前沿：Google 发布 Gemini 3.8 Live 与 Live Extended Thinking：语音内深度推理进入实时对话
- 产业动态：Palantir、Booz Allen 因 Anthropic 数据留存政策转向扩大 OpenAI Astra 使用; Agility Robotics 发布新一代人形机器人 Digit 5; Salesforce in Claude 开启 beta：Claude 对话内直接操作账户、商机与 pipeline; Sakana AI 更新深度研究助手 Marlin：Interactive Reading 就地溯源，新增 PowerPoint 输出
- 算力追踪：OpenRouter 数据：上周 OpenAI 模型支出超过 Anthropic，2.5 年来首次
- 初创&融资：AEO 初创公司 Profound 估值跃至 18 亿美元，七个月内再融 1.8 亿美元 D 轮; OpenAI 据传就新一轮融资与投资者早期沟通，估值或达 1.2 万亿美元; Anthropic 早期员工与前 METR COO 创办 AIUC：AI 承销模式管住企业 rogue agent，A 轮 4000 万美元; 前 TikTok 员工推出 AI 姿势指导应用 Superpose
- 研究关注：Atria Dawn Preview：面向科研与工程的智能体基础模型; Vidu S2：实时交互数字人与实时视频编辑，探索实时空间视频生成; ZGCM-1：7B 全开源基础模型，以"内部思考+外部工具"突破小模型容量上限; Dream-RSI：通过"演化世界"做递归自我改进的探索管理; PhysBrain 1.5：把视觉语言模型推进为物理基础模型
- X讨论：Sakana AI 提出 PC-ALM：不用反向传播训练千层神经网络; Chelsea Finn 披露 Pi 机器人在巧克力工厂全自主部署：最难的不是装箱而是堆箱; Google 盘点"AI 加速科学改善生活"：300+ 语言覆盖 70 亿人，AI & Economy ATLAS 发布; Meta Muse 美区日下载量超过 Threads、WhatsApp 与 Facebook

---

## 📖 详细参考

### 模型前沿
**Google 发布 Gemini 3.8 Live 与 Live Extended Thinking：语音内深度推理进入实时对话**
- Google 发布两款"最先进的实时对话模型"：**Gemini 3.8 Live** 面向规模、速度与成本效率——支持句中打断、**97 种语言即时切换**与视觉上下文理解（Search Live 中用摄像头对准故障点即可获得分步语音指导）；**Gemini 3.8 Live Extended Thinking** 则把深度推理带入语音对话，应对需要多步思考的任务。Extended Thinking 今日起分层推出：开发者可在 **Gemini API 与 Google AI Studio** 使用，企业侧在 **Gemini Enterprise 私密预览**（即将进入 Customer Experience 与 Workspace 商业版），消费侧面向 Gemini Live 用户及 Google AI Pro/Ultra 订阅者（覆盖 Docs、Gmail、Keep）。
  > 💡 Google 把"Extended Thinking"从文本推理档位移植到实时语音层，与 OpenAI GPT-Live-1 的"语音层+后端推理委托"架构正面相遇——两家都承认全双工语音与深度推理不能挤在一个模型里，分歧在于 Google 走同族双模型、OpenAI 走可插拔后端；语音 agent 的推理深度正在成为新竞争轴。
   - 来源: [@GoogleAI](https://x.com/GoogleAI/status/2099908000924193124) | [Google Blog](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-8-live-gemini-3-8-live-extended-thinking/)

### 产业动态
**Palantir、Booz Allen 因 Anthropic 数据留存政策转向扩大 OpenAI Astra 使用**
- Anthropic 主要企业客户仍在等待其新一代 Fable AI 模型的“零数据留存”政策落地，期间部分客户已转投 OpenAI。Palantir 与 Booz Allen 正在扩大使用 OpenAI 的 Astra 模型，并已获得零数据留存承诺；两家公司同时收窄了对 Fable 模型的使用，原因是 Anthropic 今年 6 月宣布出于安全考虑将 Fable 客户数据留存 30 天。Anthropic 此前通过与个别客户的协议提供零数据留存，并计划于今年秋季晚些时候推出名为 Enterprise Frontier Safeguards 的新项目，对符合资格的客户恢复零数据留存。
  > 💡 企业级 AI 采购正把数据留存合规当作一阶筛选条件，Anthropic 政策调整窗口期会让 OpenAI 在政企客户侧获得短期份额，但同时也倒逼 Anthropic 推出制度化方案以防客户流失固化。
   - 来源: [The Information](https://www.theinformation.com/articles/anthropics-data-policy-drama-good-openai)

**Agility Robotics 发布新一代人形机器人 Digit 5**
- Agility Robotics 发布第五代人形机器人 **Digit 5**，官方定位为"首款协作安全（cooperatively safe）人形"：基于十年研究与多年部署经验，专为人机近距离共工位设计、无需传统自动化的物理安全围栏，可在设施内任意工位自主作业并随需求重新分派任务，主打重载搬运与端到端工作流。官方同步开放 Deploy Digit 5 部署入口。
  > 💡 Digit 5 把“可近距离协作”作为产品主标签，意味着人形机器人竞争已从运动能力演示转向与人类共工位的安全工程，这一指标将决定其在仓储、制造场景的真实部署空间。
   - 来源: [@agilityrobotics](https://x.com/agilityrobotics/status/2099817779637706755)

**Salesforce in Claude 开启 beta：Claude 对话内直接操作账户、商机与 pipeline**
- Anthropic 上线 **Salesforce in Claude** beta：把用户的 Salesforce 账户（accounts）、商机（opportunities）与 pipeline 数据带入 Claude，配备 **37 个预置销售技能**——准备客户电话、审查交易、创建 pipeline 仪表盘、发送预测等均可在不离开对话的情况下完成。同日，Salesforce 在年度 Dreamforce 大会发布与 NVIDIA 合作、基于 Nemotron 开源模型的自研新模型 **Koa** 及 Agent 安全工具，并表态将参与"开源 AI 模型"与"帮企业在自有数据上安全运行 AI Agent"两大企业趋势。
  > 💡 同日两个动作构成镜像：Anthropic 把 CRM 嵌进对话、Salesforce 自建模型（Nemotron 开源底座）+安全层守自家平台——CRM 厂商与 agent 厂商在争夺"销售工作流的默认入口"；Koa 的差异化空间在 Agent 治理与数据安全层而非基础模型本身，而 37 个预置技能的粒度说明 Anthropic 直接按销售岗位日常动作切场景。
   - 来源: [@claudeai](https://x.com/claudeai/status/2099876514330206578) | [Anthropic](https://claude.com/blog/salesforce-in-claude) | [The Information](https://www.theinformation.com/briefings/salesforce-unveils-new-ai-model-agent-security-tools-dreamforce)

**Sakana AI 更新深度研究助手 Marlin：Interactive Reading 就地溯源，新增 PowerPoint 输出**
- Sakana AI 为其 Ultra Deep Research Assistant **Sakana Marlin**（基于 AB-MCTS、最长 8 小时自主研究）新增两项功能：**Interactive Reading**——在数十页报告的任意陈述处就地反向求证与深挖，像评审人类成果一样追溯出典与解释；**PowerPoint 幻灯片输出**——调查结果可编辑后直接用于汇报。官方坦承开发动因来自用户反馈的"理解瓶颈"：报告信息量够但读完耗时，调查时间其实没省下来。
  > 💡 Marlin 把迭代方向从"生成更多"转向"让人类更快信服"，正面回应了 deep research 类产品的真实瓶颈——生成侧已经过剩，验证与消化侧才是时间成本所在；"可质询的报告"若成为标配，将改变这类产品的验收标准。
   - 来源: [@SakanaAILabs](https://x.com/SakanaAILabs/status/2099988968011894789) | [Sakana AI](https://sakana.ai/marlin-update/)

### 算力追踪
**OpenRouter 数据：上周 OpenAI 模型支出超过 Anthropic，2.5 年来首次**
- OpenRouter 披露，上周平台上用户在 OpenAI 模型上的支出**超过 Anthropic 模型**——这是**超过 2.5 年来的第一次**。
  > 💡 开发者侧支出天平的这次翻转，与 GPT-6 Astra 全量开放、GPT-Live-1 进 API、Data agent/金融版密集发布的时间窗重合，也与 Anthropic 数据留存政策引发的企业观望（Palantir/Booz Allen 转向）互相印证；OpenRouter 作为中立分发层，其支出结构是模型份额最灵敏的高频指标。
   - 来源: [@openrouter](https://x.com/OpenRouter/status/2099898254905549220)

### 初创&融资
**AEO 初创公司 Profound 估值跃至 18 亿美元，七个月内再融 1.8 亿美元 D 轮**
- 面向品牌在 AI 搜索结果中露出场景的营销软件公司 Profound 宣布完成 1.8 亿美元 D 轮融资，估值 18 亿美元，距离其上一轮 9600 万美元 C 轮不到七个月。本轮由 Sequoia 与 Kleiner Perkins 领投，Lightspeed、Khosla Ventures、South Park Commons 等老股东跟投。Profound 表示过去六个月营收增长 3 倍，企业客户超过 1000 家，包括 Comcast、雅诗兰黛集团与沃尔玛。
  > 💡 Generative/Answer Engine Optimization 正在复制早期 SEO 行业的资本与客户聚集路径，半年内估值翻倍且头部品牌快速入场，说明 AI 搜索流量入口已被视为新的商业基础设施，相关软件栈具备明确的预算归属。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/15/aeo-startup-profound-hits-unicorn-valuation-raises-180m-series-d-7-months-after-last-round)

**OpenAI 据传就新一轮融资与投资者早期沟通，估值或达 1.2 万亿美元**
- 据报道，OpenAI 已与投资者就新一轮融资展开早期沟通，估值可能达到 1.2 万亿美元或更高。报道指出，相关对话发生在 OpenAI 把原定的 IPO 推迟到明年或更晚之后。报道同时提到，部分投资者对新一轮融资表达了兴趣，但具体规模、领投方与最终估值尚未公开确认。
  > 💡 1.2 万亿美元量级的私募估值与推迟 IPO 同时出现，反映出大型 AI 公司在公开市场窗口之外通过私募融资继续扩张资本体量的趋势，对后续定价基准与战略合作伙伴关系都有外溢影响。
   - 来源: [The Information](https://www.theinformation.com/briefings/openai-early-talks-new-funding-round-1-2-trillion-valuation)

**Anthropic 早期员工与前 METR COO 创办 AIUC：AI 承销模式管住企业 rogue agent，A 轮 4000 万美元**
- Anthropic 早期员工 Rune Kvist 与 AI 安全研究机构 METR 前 COO Rajiv Dattani（两人为姻亲兄弟）创办 **Artificial Intelligence Underwriting Company（AIUC）**，主张"AI 越聪明越难控制与采用"，以类似保险承销的模式评估并约束企业内外失控的 AI agent。公司宣布完成 **4000 万美元 A 轮**（Ribbit Capital 领投，First Harmonic 参投），此前已完成 Nat Friedman 旗下 NFDG、Anthropic 联合创始人 Ben Mann 等参投的 1500 万美元种子轮，累计融资 5500 万美元；客户包括 Cursor、Lovable、Harvey 与 ElevenLabs。
  > 💡 "AI 承销"把安全从合规成本变成风险定价业务，创始阵容（实验室元老+评测机构前高管）自带行业信任状；在 METR 刚接手 Anthropic 独立调查的当口，前 COO 下海做商业化安全，也折射出"第三方评估"生态正从非营利向商业分层演化。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/15/early-anthropic-hire-former-metr-coo-have-found-a-way-to-rein-in-rogue-ai-agents/)

**前 TikTok 员工推出 AI 姿势指导应用 Superpose**
- 两名前 TikTok 员工 Melody Chu 与 Jing Liu 推出 iOS 应用 **Superpose**：用户自拍或拍朋友后，AI 生成四种候选姿势并可经 match-pose 功能把自己放入建议构图。同类动作正在聚集：Google 去年在 Pixel 上线 Camera Coach 指导构图，Adobe 七月在实验相机应用中加入 AI 照片点评。
  > 💡 "AI 摄影教练"正在成为视觉生成能力的轻量落地带——不生成最终图像、只生成"怎么拍"的指导，规避了 AI 生图的写实性争议，把消费级 AI 相机赛道从"替代拍摄"转向"增强拍摄"。
   - 来源: [TechCrunch](https://techcrunch.com/2026/09/15/former-tiktok-execs-built-an-app-that-uses-ai-to-teach-you-how-to-pose-for-a-photo/)

### 研究关注
**Atria Dawn Preview：面向科研与工程的智能体基础模型**
- 论文介绍 Atria Dawn Preview 作为一个面向科研与工程工作流的基础智能体语言模型，目标是在真实世界中扩展智能体生产力的前沿。该模型通过 Verifiable Experience Pipeline 进行训练，把工具交互与可执行环境以及外部可验证的结果相连接。在覆盖真实科研、工程与数字工作的 16 项 benchmark 上，Atria Dawn Preview 与现有前沿智能体具备竞争力，并在其中 5 项上取得已报告的最高分。论文还以 56 位参与者、769 条任务记录以及智能体日志为案例，分析人与 AI 的协作过程，并指出在已完成任务中约三分之一被参与者评为离开 AI 就难以完成。
  > 💡 把研究过程本身作为案例做量化复盘，并把 AI 协作的实际增益从 benchmark 分数延展到人力判断分布，这条路径对后续智能体研发的人机分工评估有参考价值。
   - 来源: [HuggingFace Daily Papers](https://huggingface.co/papers/2609.15818) | [arXiv](https://arxiv.org/abs/2609.15818)

**Vidu S2：实时交互数字人与实时视频编辑，探索实时空间视频生成**
- 生数科技发布 Vidu S2 技术报告，包含 **Vidu S2-Avatar**（实时交互数字人模型）与 **Vidu S2-Editing**（实时视频编辑模型）两部分：相较 S1，Avatar 支持**实时 720p 生成**、可随时更新的动态参考与更强的指令遵循（如随指令起舞）；Editing 支持对视频流的实时编辑。论文还探索了两者**实时空间视频生成**的可行性。
  > 💡 "实时交互数字人+实时编辑+空间视频"三件套，显示国产视频模型正从单段生成质量竞赛转向实时交互形态——与 fal Director 的连续流、Gemini Live 的语音实时化同向，实时性正在成为视频生成的下一分水岭。
   - 来源: [arXiv](https://arxiv.org/abs/2609.11638)

**ZGCM-1：7B 全开源基础模型，以"内部思考+外部工具"突破小模型容量上限**
- 论文提出 ZGCM-1，一个**完全开源、从零训练的 7B 稠密基础模型**，主打数据、系统与算法层面的极致效率。其核心前提是：紧凑模型无法被动记忆整个开放网络，但可以通过**刻意内部思考与主动外部工具使用的耦合**突破参数容量限制。为在 256K 上下文上支撑这一范式，团队给出端到端的高效开放训练配方，涵盖架构与系统协同设计（交错门控滑窗与全注意力）等环节。
  > 💡 "不背网、会思考、用工具"的 7B 路线与 MiniCPM5-2B 的端侧智能叙事互补：当模型小到无法靠参数记忆时，工具调用与推理深度的耦合效率就是新的 scaling law；全开源训练配方也让它成为小模型效率研究的可复现基线。
   - 来源: [arXiv](https://arxiv.org/abs/2609.13356)

**Dream-RSI：通过"演化世界"做递归自我改进的探索管理**
- 论文针对 RSI 的核心瓶颈——探索策略管理：固定策略无法适应扩张的搜索空间，在线策略优化又要在延迟且昂贵的长程反馈下穿越巨大元搜索空间。作者引入"演化世界"框架，让探索策略随搜索空间与反馈动态演化，以摆脱两难。
  > 💡 把"探索策略本身"当作需要进化的对象而非手工设计项，与 NeoHorse-1 的路由信号课程同属"元层自动化"路线；RSI 的瓶颈叙事正从模型能力转向探索与信用分配机制，值得与 AIRA 的无中央协作对照阅读。
   - 来源: [arXiv](https://arxiv.org/abs/2609.14858)

**PhysBrain 1.5：把视觉语言模型推进为物理基础模型**
- 论文提出 PhysBrain 1.5，一个统一**理解物理环境、生成动作、预测未来状态**的模型：以"观察—交互—环境变化"的物理闭环为动机，从通用视觉语言模型出发，把语言响应、末端执行器运动与稠密视觉目标编码为离散序列，用自回归下一 token 预测联合优化；预训练的具身监督完全来自视频等被动数据（无需机器人真机）。
  > 💡 "动作与状态预测和语言共用 next-token 目标"把 VLA 从专用架构拉回统一序列建模主流；若视频预训练真能替代真机数据起步，将直接改变具身模型的数据经济学——与宇树 2500 小时真机路线形成两条路径的分岔。
   - 来源: [arXiv](https://arxiv.org/abs/2609.14973)

### X讨论
**Sakana AI 提出 PC-ALM：不用反向传播训练千层神经网络**
- 针对"大脑无法精确实现反向传播"这一问题，Sakana AI 提出 PC-ALM，一种**反向传播的局部学习替代方案**：从分布式优化与 NeuroAI（predictive coding，让每个神经元激活求解基于能量的推断而非标准前向）中取材，仅用**局部动态即可训练 1000 层神经网络**、全程不使用反向传播，为物理系统（如大脑）如何在多层结构中完成信用分配提供了可计算的参照。
  > 💡 千层网络纯局部训练跑通，说明 credit assignment 并不必然依赖全局梯度——对类脑硬件与低通信开销的训练架构（芯片上学习）是关键前置证据；这也是"效率突破"叙事从 token 成本扩展到训练范式的信号。
   - 来源: [@SakanaAILabs](https://x.com/SakanaAILabs/status/2099468208231399687) | [Sakana AI](https://pub.sakana.ai/pc-alm/) | [arXiv](https://arxiv.org/abs/2605.31022)

**Chelsea Finn 披露 Pi 机器人在巧克力工厂全自主部署：最难的不是装箱而是堆箱**
- Physical Intelligence 联合创始人 Chelsea Finn 发布 Pi 机器人在 Dandelion Chocolate 的部署视频，称**全程自主、零人工干预**。她分享的反直觉经验是：概念验证（装好一个箱子）与真实可用（连续数小时高效装箱）之间存在巨大落差——最灵巧的装箱反而不是最难的，**可靠的堆箱才是**：原桌面机器人难以看清堆叠状态（需额外加装相机），堆放位置每箱不同要求更强泛化，且一个放歪的箱子会连带失败。
  > 💡 这是"最后一公里泛化"的具身版样本：瓶颈从灵巧操作转移到**感知视野与放置泛化**这类系统问题——与 Skild 的"demo≠可用"三原则互为印证；一线部署复盘正成为机器人基础模型迭代的最稀缺输入。
   - 来源: [@chelseabfinn](https://x.com/chelseabfinn/status/2099669259735728252)

**Google 盘点"AI 加速科学改善生活"：300+ 语言覆盖 70 亿人，AI & Economy ATLAS 发布**
- Google 发布综述文章：其技术现已支持**超过 300 种语言、覆盖 70 亿人（全球人口 86%）**，并推出 **AI & Economy ATLAS**——迄今最全面的全球 AI 实际使用交互洞察。科学侧近期成果包括：AlphaGenome Atlas 完成人类基因组**全部 90 亿个单字母变异**的映射并开放给研究者、WeatherNext 3 全球天气模型、洪水与野火预警等灾害韧性应用。Demis Hassabis 转发了 Pichai 的该帖。
  > 💡 把分散的科学应用（基因组、气象、灾害、健康、教育）打包成一次"AI 造福人类"的整体叙事，与其在反垄断与版权诉讼环境中的形象需求同频；ATLAS 的全球使用数据也可能成为 Google 论证 AI 经济影响的政策弹药。
   - 来源: [@demishassabis](https://x.com/demishassabis/status/2099977615083700576) | [Google Blog](https://blog.google/innovation-and-ai/technology/ai/ai-applications-science-people/)

**Meta Muse 美区日下载量超过 Threads、WhatsApp 与 Facebook**
- 投资Palace 创始人 Sasha Kaletsky 引用数据称，Meta 的个人 agent 应用 **Muse 在美区日下载量已超过 Threads、WhatsApp 和 Facebook，距 Instagram 仅差约 3000**，并称其为"ChatGPT 以来最大的消费 AI 发布、新的 Tier 1 消费应用已经诞生"（Scale AI CEO Alexandr Wang 亦参与传播）。
  > 💡 若第三方下载榜可交叉验证，Muse 将是首个杀入超级应用下载量级的 agent 应用——分发靠 Meta 社交图谱、留存靠"帮你办事"的 agent 属性，消费 agent 的冷启动难题被平台优势绕开；对"agent 是伪需求"的怀疑论是直接反驳。
   - 来源: [@SashaKaletsky](https://x.com/SashaKaletsky/status/2099536653048225833) | [@alexandr_wang](https://x.com/alexandr_wang/status/2099548924105379974)

---
*更新时间: 2026-09-16 06:45*