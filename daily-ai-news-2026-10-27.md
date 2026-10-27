## 10月27日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 25 条

---

## 要点汇总

- 模型前沿：OpenAI 发布 GPT-6.1 Terra：强化电脑操作能力并降低价格; NUS 推出原生 System One 架构，将决策置于模型设计起点
- 产业动态：AMD 在 XLA 中引入 Group-GEMM，优化 MoE 推理的矩阵计算效率; Agility Robotics 将 Digit 机器人扩展至两座美国仓库，计划 2027 年初启动; 报道称 DoorDash 接近以约 170 亿美元收购 Instacart
- 算力追踪：SpaceX 拟斥资 400 亿美元向 Apollo 关联方租赁 AI 芯片; Meta 拟通过股权融资筹集最高 950 亿美元，投入 AI 数据中心建设
- 初创&融资：Anthropic 向 SEC 提交 S-1，拟推进 IPO; 自动驾驶芯片商新芯航途完成战略轮融资，累计融资近 50 亿元; 模拟芯片企业圣邦股份拟8.33亿元收购申矽凌微电子58.29%股权; 工业设备智能运维商TRACTIAN获1.3亿美元D轮融资; 自动驾驶工程商Bedrock Robotics获6亿美元C轮融资，估值41亿美元
- 研究关注：MiRL：按可泛化错误训练终端智能体，未见前缀错误减少 43% 至 57%; dSpark：蒸馏 Token 提交时机，扩散语言模型在 GSM8K 最高加速 10.12 倍; SmoothScore：按主张量化研究智能体的结论平滑，7 个系统均出现过度断言; ParallelWorld 为机器人引入多步平行世界预演，任务成功率从 56% 提升至 83%; Transformer 预训练探索绕开反向传播，新模型架构公布测试结果

---

## 📖 详细参考

### 模型前沿
**OpenAI 发布 GPT-6.1 Terra：强化电脑操作能力并降低价格**
- OpenAI 发布 GPT-6.1 Terra，定位为兼具速度与电脑操作能力的新模型。该模型能够理解屏幕内容、跨应用执行操作并自然写作，面向覆盖整个工作日的任务。
  > 💡 GPT-6.1 Terra 将电脑操作、自然写作与工作场景效率放在同一产品定位中，价格下探也有助于扩大企业级应用覆盖。
   - 来源: [@openai](https://x.com/OpenAI/status/2114780711664398349)

**NUS 推出原生 System One 架构，将决策置于模型设计起点**
- NUS 推出名为 System One 的原生架构。现有来源仅提供该架构名称及其以决策为模型设计起点的定位，未披露具体机制、性能数据或适用范围。
  > 💡 System One 的提出值得关注，但目前公开信息有限，尚无法评估其相对现有架构的技术差异与实际价值。
   - 来源: [新智元](https://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA%3D%3D&mid=2652737969&idx=3&sn=57bdfd605221dbcb2ddfbfade189ade6)

### 产业动态
**AMD 在 XLA 中引入 Group-GEMM，优化 MoE 推理的矩阵计算效率**
- AMD ROCm 博客介绍了在 XLA 中使用 Group-GEMM 优化 Mixture-of-Experts 模型的方法。文章指出，MoE 层会形成大量形状随数据变化的小型独立矩阵乘法，这类计算模式对 GPU 和数学库并不友好。
  > 💡 Group-GEMM 面向 MoE 层特有的动态矩阵计算形态，可改善此类模型的执行效率与内存利用，但现有证据未给出具体性能提升幅度。
   - 来源: [AMD ROCm Blogs](https://rocm.blogs.amd.com/software-tools-optimization/openxla-group-gemm/README.html)

**Agility Robotics 将 Digit 机器人扩展至两座美国仓库，计划 2027 年初启动**
- Agility Robotics 表示，GXO 是首家将 Digit 人形机器人投入实际工作的企业，并计划从 2027 年初开始把应用扩展至另外两座美国仓库。该消息显示 Digit 的部署范围将从现有客户进一步扩大至更多仓储地点。
  > 💡 重复客户扩大部署比一次性试验更能反映人形机器人的商业采用程度；后续关键在于新增仓库中的持续运行效果与客户是否继续扩容。
   - 来源: [@agilityrobotics](https://x.com/agilityrobotics/status/2114786439737262138)

**报道称 DoorDash 接近以约 170 亿美元收购 Instacart**
- 据报道，DoorDash 正与 Instacart 就约 170 亿美元收购交易进行深入谈判。部分知情人士称，交易最快可能在未来数日宣布，但仍存在临近最终阶段破裂的可能。Instacart 曾寻求出售自身，并曾与 Uber 和 DoorDash 展开谈判。
  > 💡 若交易达成，DoorDash 将以约 170 亿美元拿下 Instacart，外卖平台与生鲜电商平台的业务边界将进一步重合。
   - 来源: [The Information](https://www.theinformation.com/briefings/doordash-nears-deal-buy-instacart-17-billion-deal)

### 算力追踪
**SpaceX 拟斥资 400 亿美元向 Apollo 关联方租赁 AI 芯片**
- 报道称，SpaceX 已同意向 Apollo Global Management 旗下实体支付 400 亿美元租赁人工智能芯片。交易安排由 Apollo 出售债务购买芯片，再将芯片租给 SpaceX，使其可使用 Nvidia 新一代计算芯片而无需将相关债务计入自身资产负债表。
  > 💡 该交易以资产租赁和债务出售结构承接 SpaceX 的大额算力需求，凸显头部 AI 基础设施扩张对新型融资安排的需求。
   - 来源: [The Information](https://www.theinformation.com/briefings/spacex-agrees-pay-40-billion-lease-chips-apollo)

**Meta 拟通过股权融资筹集最高 950 亿美元，投入 AI 数据中心建设**
- Meta Platforms 宣布计划通过股权出售筹集最高 950 亿美元资本，以支持人工智能基础设施建设。融资计划包括约 350 亿美元的承销公开发行，其中约 225 亿美元来自 A 类股票出售，另有约 125 亿美元来自存托股份。
  > 💡 Meta 将融资规模与 AI 数据中心扩张直接绑定，大规模股权融资既反映其算力投入强度，也带来更高的资本回报要求。
   - 来源: [The Information](https://www.theinformation.com/briefings/meta-plans-raise-95-billion-ai-equity-sales)

### 初创&融资
**Anthropic 向 SEC 提交 S-1，拟推进 IPO**
- Anthropic 已就拟议 IPO 向美国证券交易委员会提交 S-1 注册声明。该注册声明尚未生效，在其生效前，相关证券不得出售，也不得接受认购要约。
  > 💡 Anthropic 已从长期非上市公司进入公开上市申报阶段，但注册声明生效及最终发行仍存在程序不确定性。
   - 来源: [@anthropicai](https://x.com/AnthropicAI/status/2114705042817110293)

**自动驾驶芯片商新芯航途完成战略轮融资，累计融资近 50 亿元**
- 自动驾驶芯片研发商新芯航途宣布完成战略轮融资，累计融资近 50 亿元人民币。上汽、奇瑞、长鑫科技、中金雷诺、均胜等车企及产业战略投资方参与本轮融资。其首款自研芯片面向售价 20 万至 30 万元车型，对标 Nvidia Orin N 与地平线 J6E，两款对标芯片算力均在 80 TOPS 左右。
  > 💡 新芯航途的融资获得多家车企与产业资本参与，有助于推进面向走量车型的算力芯片研发和产业化。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706178)

**模拟芯片企业圣邦股份拟8.33亿元收购申矽凌微电子58.29%股权**
- 圣邦股份公告，拟以自有资金、自筹资金及或H股上市募集资金，合计8.33亿元收购上海申矽凌微电子科技股份有限公司58.2878%的股份。申矽凌微电子专注环境传感器IC的设计、开发、制造和销售，产品包括温度传感器IC、温湿度传感器IC和气体传感器IC等。
  > 💡 这笔交易将使圣邦股份取得环境传感器芯片企业的控股权，产品方向从模拟芯片进一步延伸至传感器IC市场。
   - 来源: [IT桔子](https://www.itjuzi.com/merger/14501)

**工业设备智能运维商TRACTIAN获1.3亿美元D轮融资**
- TRACTIAN获得1.3亿美元D轮融资，由M&G Catalyst和Sapphire Ventures联合领投，General Catalyst Partners、Robert Bosch Venture Capital、Monashees Capital与Y Combinator参投。TRACTIAN提供结合智能硬件与人工智能软件的机器监测方案，用于预测设备故障并优化维护计划，其产品目标包括帮助制造设备实现“零停机”。公司正在打造面向工业场景的“工业Copilot”，以AI连接机器与人类专家。
  > 💡 融资显示资本正押注工业设备监测、预测性维护与生成式AI结合的垂直应用，TRACTIAN已从硬件监测延伸至工业Copilot。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706554)

**自动驾驶工程商Bedrock Robotics获6亿美元C轮融资，估值41亿美元**
- Bedrock Robotics完成6亿美元C轮融资，融资后估值达到41亿美元，CapitalG与Emergence Capital联合领投。这家成立于2024年的自动驾驶技术公司专注于自主挖掘机，并已开发可改装至挖掘机等施工现场车辆的自动驾驶套件。相关设备已投入内华达州一处水处理设施、得州Champion Site Prep运营的土方工地，以及Zachry Construction Corporation承建的120万立方码土方项目。
  > 💡 Bedrock Robotics在成立两年后获得大额融资并进入商业施工场景，反映自主工程机械正从测试和试点转向实际作业，但项目复制能力仍需后续验证。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/26/this-startups-self-driving-excavators-help-dig-up-600m-in-new-funding)

**内容电商Agent基建商攀峰智能K2 Lab获数千万美元天使轮融资**
- 攀峰智能K2 Lab获得数千万美元天使轮融资，由凯泰资本投资。公司专注打造面向超级个体的内容电商Agent基建，首款产品Moras面向海外TikTok创作者。Moras覆盖内容理解和行业洞察、选品推荐、脚本生成、多镜头视频制作、智能剪辑与商业分析，并通过在线强化学习形成从洞察到创作再到分析的闭环。
  > 💡 K2 Lab选择海外TikTok创作者作为首个落地场景，以内容电商全流程自动化承接超级个体需求；天使轮融资将支撑其Agent基建和商业化推进。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706504)

**AI保险服务商Slingshot Insurance获2700万美元种子轮融资**
- Slingshot Insurance获得2700万美元种子轮融资，由Skyward Group与Rally Ventures联合领投，Jim Hays参投。公司聚焦电商、出行等消费结账场景的小额附加保单，通过AI中台自动完成核保、数据流转、风控和后台管理。其平台以API方式连接商户与承保主体，首个设计合作伙伴Vertical Insure已服务数十万终端用户。
  > 💡 Slingshot Insurance以AI中台降低小额保单的运营成本，首个合作伙伴已触达数十万用户，显示嵌入式保险基建具备初步规模化基础。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706570)

**AI 视频服务商 Higgsfield AI 获 B+ 轮融资，TCV 与 NVIDIA 参投**
- 人工智能生成视频服务商 Higgsfield AI 近日获得 B+ 轮融资，由 TCV 和 NVIDIA 投资。公司旗下应用 Diffuse 支持用户通过一张自拍照创建个性化人物角色，并结合文本提示、参考图像或视频制作内容，相关创作由 Higgsfield AI 的专有视频模型提供支持。
  > 💡 生成式视频平台获得 TCV 与 NVIDIA 投资，表明资本关注正从通用模型延伸至具备自有视频技术并已有应用入口的内容创作服务。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706540)

**3D 打印技术企业百世达电子完成天使+轮融资**
- 百世达电子近日完成天使+轮融资，由静水湖创投独家投资。该企业专注于 3D 打印技术研发与产业化。
  > 💡 本轮资金将为百世达电子推进 3D 打印技术产业化提供支持，后续进展取决于其研发成果与产业化转化效率。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14705047)

**具身智能企业原力无限获近亿元投资，浙创投牵头推进**
- 浙江省创业投资集团有限公司近日完成对原力无限（INFIFORCE）的近亿元投资，由浙创投投资人沈千旸牵头推进。原力无限聚焦具身大脑 AtomBrain 研发，围绕第一人称原生数据、DataGrid 全栈 AI Infra 与隐式世界模型构建智能底座，并面向不同机器人本体及真实世界应用提供能力。
  > 💡 近亿元投资及明确牵头人，显示产业资本正在加码具身智能基础模型与数据基础设施，但商业价值仍需通过机器人应用落地验证。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706568)

**聚变企业以政府股权换取 2.6 亿美元资助，Helion 与 CFS 获无投票权股份**
- 报道称，Helion 与 Commonwealth Fusion Systems 从美国商务部获得合计 2.6 亿美元资助，用于开发用于反应堆供电与控制先进半导体的技术。两家公司获得的资助分别为 1.75 亿美元和 8500 万美元。作为资助条件，Helion 与 CFS 同意向政府提供非投票权股份。相比之下，CFS 已筹集约 40 亿美元，Helion 已承诺资本约 32 亿美元，因此本次资助的金额相对有限。
  > 💡 政府资金正从传统的非稀释性支持转向附带股权权益的产业投资，这会改变聚变初创企业的资本结构，也让公共资金更直接分享潜在商业成功。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/26/fusion-startups-are-giving-the-government-shares-in-exchange-for-awards-is-it-worth-it)

**Anthropic 公开 IPO 初步招股书，拟以 ANT 代码登陆 Nasdaq**
- Anthropic 已公开提交首次公开发行的初步招股书，披露今年上半年的业务情况、治理细节以及超过 90 页的风险因素。公司预计约两周后启动投资者路演，并将 IPO 目标定在 11 月 16 日所在一周，时间早于感恩节。股票拟在 Nasdaq Stock Market 上市，代码为 ANT。
  > 💡 公开招股书让 Anthropic 的治理、风险因素和资本需求首次进入上市审查框架；其最终估值与发行条件将成为检验 AI 模型公司高投入商业模式的市场节点。
   - 来源: [The Information](https://www.theinformation.com/articles/anthropics-s-1-takeaways-giant-compute-commitments-complex-lock-ups)

**伴侣动物药物研发商 Familiar 获 500 万美元种子轮融资**
- Familiar 获得 500 万美元种子轮融资，由 BreakTHRU、Icehouse Ventures 和 Pioneer Fund 联合领投。这家人用药物转译公司通过收购已有临床研究基础候选药物的兽药开发权益，推进犬猫伴侣动物用药开发。其首批管线包含 13 个项目，覆盖肿瘤、神经、心血管和免疫等方向，首个兽医临床研究已经启动。
  > 💡 Familiar 将已有的人用药物研发成果转化至伴侣动物用药，以缩短兽药开发周期；500 万美元种子轮将支持其管线继续推进。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706576)

### 研究关注
**MiRL：按可泛化错误训练终端智能体，未见前缀错误减少 43% 至 57%**
- 论文提出 MiRL，先分析策略在不同环境中反复出现的错误步骤，再从这些错误步骤启动强化学习 rollout，仅在通过测试且避开目标错误时给予奖励。在 Qwen3.5-4B 上，8 类错误占错误步骤的 52.1%；训练后，策略在未见前缀上重复所测错误的频率平均降低 43% 至 57%。MiRL 在 Terminal-Bench Lite 上以 51.8% 超过 TMax-4B 的 47.4%，在 Terminal-Bench 2.1 上取得 21.3%，后者为 20.6%，同时仅使用后者 35% 的 rollout。
  > 💡 MiRL 将终端智能体失败分析转化为定向训练目标，在减少 rollout 使用量的同时维持或提升基准表现，展示了错误驱动式强化学习在长链路任务中的实用价值。
   - 来源: [arXiv cs.CL](https://arxiv.org/abs/2610.35697v1)

**dSpark：蒸馏 Token 提交时机，扩散语言模型在 GSM8K 最高加速 10.12 倍**
- 论文提出 dSpark，通过日程蒸馏学习扩散语言模型何时提交 Token，以减少解码轮次并加快并行采样。该框架优先揭示能够降低其他位置预测不确定性的 Token，并通过 KL 散度正则项保持生成质量。在 GSM8K 上，dSpark 相对多种基线在 LLaDA-8B-Instruct 和 Dream-7B-Instruct 上分别实现 10.12 倍与 5.12 倍加速，同时保持更优的任务表现。
  > 💡 dSpark 的价值不只是提高单次并行解码速度，而是把 Token 提交策略纳入训练环节；若结果能在更多模型和任务上复现，可进一步降低扩散语言模型的推理等待时间。
   - 来源: [arXiv cs.CL](https://arxiv.org/abs/2610.35804v1)

**SmoothScore：按主张量化研究智能体的结论平滑，7 个系统均出现过度断言**
- 论文指出，大语言模型生成的长篇研究报告可能把不同来源整合成语气确定、但证据支撑不足的结论，该现象被称为平滑。论文提出主张级评分流程 SmoothScore，提取报告中的关键结论，检索相关证据并按高层维度聚类，再依据证据为每项主张评分。对 7 个系统和 4 个数据集的评估显示，这些研究智能体持续生成强于现有证据所能支持的结论。
  > 💡 研究智能体的风险不只来自错误引用，也来自把冲突证据压缩成过度确定的单一叙事；SmoothScore 提供了可复用的逐主张审计指标，有助于区分语言流畅度与证据忠实度。
   - 来源: [arXiv cs.CL](https://arxiv.org/abs/2610.35793v1)

**ParallelWorld 为机器人引入多步平行世界预演，任务成功率从 56% 提升至 83%**
- 清华团队提出 ParallelWorld，将多步预演引入具身智能体的高层规划。实验结果显示，该方法将任务成功率从 56% 提升至 83%。
  > 💡 ParallelWorld 的增量在于让机器人在执行前评估不同选择的后续影响，为具身智能体的高层规划提供了可量化的成功率改进。
   - 来源: [机器之心](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw%3D%3D&mid=2651070119&idx=3&sn=0b5bcfa3dbbba88884cf9dbff0a0c6a9&chksm=8565236f6f50042d983008175f0ebe5cef76a8448f5263699de8d854457c22799b2447acd9d1&scene=0&xtrack=1)

**Transformer 预训练探索绕开反向传播，新模型架构公布测试结果**
- 机器之心报道了一家公司探索不使用反向传播预训练 Transformer 的研究进展。现有证据聚焦于大模型能否摆脱长期主流的反向传播训练方式，并涉及相关训练方法与架构的测试结果。
  > 💡 绕开反向传播有望减少对现有训练流程和配套硬件的依赖，但现有证据未披露模型规模、训练成本及关键评测数据，暂不足以判断其工程可用性。
   - 来源: [机器之心](http://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw%3D%3D&mid=2651070119&idx=2&sn=bb57ff281605456e1b9a19fdff11ef66&chksm=85655cf8a4a45b3f207e25b0dcd5525674da40c7b341028d9a3b79826bb3382cd7f1b72fe740&scene=0&xtrack=1)


---
*更新时间: 2026-10-27 11:54*