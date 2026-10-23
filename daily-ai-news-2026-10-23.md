## 10月23日 AI 前沿动态

> 自动汇总 | 时间窗口: 24h | 全局精选 15 条

---

## 要点汇总

- 产业动态：Agility Robotics 的 Digit 5 获 Mobile Robotics 2026 年度产品读者选择投票
- 算力追踪：Lava 称中国电信关联网络发现 32 颗 Nvidia B300 芯片; Google 联手 Voltus 以 1 吉瓦虚拟电厂应对高峰电力需求
- 初创&融资：报道称 OpenAI 拟完成 300 亿美元融资，投前估值最高 1.25 万亿美元; 报道称 OpenAI 筹备 300 亿美元融资，投前估值拟达 1.25 万亿美元; 物理 AI 初创公司 Tractian 完成 1.3 亿美元 D 轮融资，估值 14 亿美元; 具身智能数据公司星忆智能完成数千万元种子轮及种子+轮融资; AI工程设计公司Mach9完成3400万美元A轮融资，平台已落地2500余个基建项目
- 研究关注：BeNice!：让循环模型跨层共享 KV Cache，长上下文首字延迟最多降低 83.6%; 直接 Pass@k 剪枝：平衡测试时推理候选的质量与多样性，八个开放权重模型上优于既有策略; Softmax 数值双缺陷修复：消除 Slingshot，并稳定蒸馏与权重衰减训练; 扩散语言模型黑盒攻击：以自然语言分布替代随机映射，字符级困惑度降至 3–5
- X讨论：三支团队一个月内推进LLM解码megakernels，覆盖TPU、AMD与GB300平台

---

## 📖 详细参考

### 产业动态
**Agility Robotics 的 Digit 5 获 Mobile Robotics 2026 年度产品读者选择投票**
- Agility Robotics 呼吁读者为 Digit 5 参与 Mobile Robotics 2026 年度产品读者选择投票，投票于 10 月 22 日美东时间下午 6 点截止。官方称 Digit 5 以协作安全为设计基础，可在靠近人员的环境中工作。
  > 💡 当前信息主要是读者选择活动，只能确认 Digit 5 的产品定位与投票状态，尚不足以支持更广泛的性能或市场判断。
   - 来源: [@agilityrobotics](https://x.com/agilityrobotics/status/2113284257351176450)

### 算力追踪
**Lava 称中国电信关联网络发现 32 颗 Nvidia B300 芯片**
- 以色列安全公司 Lava 表示，其通过监控系统在中国电信这一国有电信企业的关联网络中发现了 32 颗 Nvidia Blackwell Ultra B300 芯片。B300 是 Nvidia 性能最强的数据中心芯片之一，受美国出口管制限制，不得向中国销售。此次发现引发了对相关出口限制实际执行效果的疑问。
  > 💡 该发现暴露了高端 AI 芯片出口管制可能存在的流通与监管漏洞，也可能推动美国进一步审查 B300 等受管制产品的最终流向。
   - 来源: [The Information](https://www.theinformation.com/briefings/nvidias-powerful-b300-chips-spotted-chinese-state-owned-network)

**Google 联手 Voltus 以 1 吉瓦虚拟电厂应对高峰电力需求**
- Google 宣布与能源公司 Voltus 合作，在用电高峰时段向家庭和企业支付费用，以减少电力消耗。两家公司称将建设一座 1 吉瓦的“虚拟电厂”，目标是降低美国中大西洋地区 PJM 电网区域的能源消费，该区域服务 6700 万人口。此举旨在缓解数据中心扩张对电力需求带来的影响。
  > 💡 通过聚合分散的用电侧负荷形成虚拟电厂，Google 正把数据中心电力约束转化为可运营的需求侧资源；这种模式能否扩展，取决于参与规模、响应频率及其与区域电网调度体系的衔接。
   - 来源: [The Information](https://www.theinformation.com/briefings/google-pay-homes-businesses-curb-energy-usage)

### 初创&融资
**报道称 OpenAI 拟完成 300 亿美元融资，投前估值最高 1.25 万亿美元**
- 据报道，OpenAI 正争取在接下来一周结束前完成一轮 300 亿美元融资，投前估值最高可达 1.25 万亿美元，不包含本轮新增投资。纽约投资机构 Coatue Management 与来自阿拉伯联合酋长国的投资者据称将领投该轮融资。相关交易条款仍可能调整，OpenAI 未予置评。
  > 💡 若融资按报道中的规模落地，OpenAI 将刷新私募公司估值纪录；UAE 投资者参与还可能把资金与当地算力供给合作联系起来，但具体安排尚未确认。
   - 来源: [The Information](https://www.theinformation.com/briefings/openai-fundraising-round-set-close-soon-uae-investors-coatue-leading-investment)

**报道称 OpenAI 筹备 300 亿美元融资，投前估值拟达 1.25 万亿美元**
- 报道称，OpenAI 正推进最高 300 亿美元的融资，拟采用 1.25 万亿美元投前估值，由 Coatue 和阿联酋投资者领投，相关条款仍在谈判。OpenAI 拒绝了置评请求。公司已于 6 月秘密提交 IPO 文件，最近一次融资在 3 月完成，投后估值为 8520 亿美元。报道还称，阿联酋融资可能同时涉及向 OpenAI 提供更多算力容量的协议。
  > 💡 此次融资若完成，将使 OpenAI 的估值超过万亿美元，并进一步提高其后续 IPO 的市场定价门槛；融资与海外算力协议若同步落地，则意味着资本和算力供给正在被纳入同一项战略安排。
   - 来源: [TechCrunch](https://techcrunch.com/2026/10/22/openai-working-on-new-30b-raise-at-1-25t-valuation-ahead-of-ipo)

**物理 AI 初创公司 Tractian 完成 1.3 亿美元 D 轮融资，估值 14 亿美元**
- 总部位于美国佐治亚州亚特兰大的物理 AI 初创公司 Tractian 完成 1.3 亿美元 D 轮融资，估值达到 14 亿美元，本轮由 Sapphire Ventures 领投。Tractian 提供用于评估机器状态的传感器，可预测机器发生故障所需时间，并建议维护计划。这家成立 7 年的公司由此进入独角兽行列。
  > 💡 Tractian 的融资显示，资本正在从通用基础模型延伸至工业设备监测和预测性维护等可量化的物理 AI 场景；其核心价值在于用传感器数据连接设备状态判断与维护决策。
   - 来源: [The Information](https://www.theinformation.com/briefings/exclusive-physical-ai-startup-tractian-becomes-unicorn)

**具身智能数据公司星忆智能完成数千万元种子轮及种子+轮融资**
- 星忆智能宣布完成数千万元种子轮及种子+轮连续融资。种子轮由顺禧基金领投，种子+轮由产业资本凌云光领投，中关村资本与一创投资跟投。公司主要产品包括星忆EgoKit多模态数采套件、星忆HBR Engine数据引擎及高精度具身数据集。
  > 💡 连续获得种子阶段融资，反映资本正在关注具身智能数据采集、引擎与数据集形成闭环的基础设施方向。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14699876)

**AI工程设计公司Mach9完成3400万美元A轮融资，平台已落地2500余个基建项目**
- Mach9获得3400万美元A轮融资，由Bessemer Venture Partners与First Round Capital联合领投，Quiet Capital和Prudence Holdings参投。公司为AI计算机辅助设计软件解决方案提供商，其Digital Surveyor平台可从LiDAR点云数据中自动识别路缘、护栏和管线等地物，并生成工程级CAD初稿。平台已服务多家头部工程公司与美国州交通部门，落地2500余个基建项目。
  > 💡 Mach9以已有项目落地规模获得A轮融资，表明AI在工程测绘与设计自动化场景中已进入规模化应用验证阶段。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706433)

**SRAM存算一体芯片公司九天睿芯半年完成累计10亿元融资**
- 九天睿芯宣布半年完成累计10亿元融资，一苇资本担任本轮融资财务顾问。美团战投、小鹏汽车旗下星航资本、长存产业基金、元禾璞华与豪威集团等战略投资机构先后入局，智微资本和米哈游战投近期加入，老股东英豪资本与韦豪创芯超额追加。公司以SRAM存算一体芯片为核心，业务覆盖边缘推理、端云协同、云端大模型推理与AI存储系统。
  > 💡 九天睿芯在半年内完成累计10亿元融资，且投资方横跨互联网、汽车、芯片、游戏与投资机构，显示其存算一体路线获得多类产业资本关注。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706422)

**大语言模型公司DeepSeek完成A+轮融资，石溪资本、中芯聚源与君联资本等加入**
- DeepSeek获得A+轮融资，新进投资方包括石溪资本、中芯聚源、CPE源峰、君联资本与吉利等，首轮股东宁德时代、腾讯、IDG资本、砺思资本和拾象资本继续参与。公司由幻方量化孕育而生，专注于开发大语言模型及相关技术，并于2025年1月20日发布DeepSeek-R1，同步开源模型权重。
  > 💡 DeepSeek的A+轮投资阵容覆盖芯片、汽车、互联网与投资机构，产业投资方占主导，资本关注点与其模型及技术路线直接相关。
   - 来源: [IT桔子](https://www.itjuzi.com/investevent/14706407)

### 研究关注
**BeNice!：让循环模型跨层共享 KV Cache，长上下文首字延迟最多降低 83.6%**
- 论文提出两阶段方法，使循环模型在保持参数量不变的情况下获得 KV 可共享性。第一阶段在预训练中采用随机深度，形成收缩式残差动态并推动不同循环的表示趋于共同极限；第二阶段在训练后处理中将最后一次循环的 KV Cache 广播至首次循环，使其生成兼容残差，同时保持原模型质量。实验显示，该方法与 multi-latent attention、Kimi delta attention 及 fp8、mxfp8、nvfp4 等低精度量化方案兼容；在模拟的低内存长上下文推理中，Cache 命中率最多提高 31.4%，吞吐量最多提高 23.6%，p90 首字延迟最多降低 83.6%。
  > 💡 该工作把循环推理中的重复 KV 占用转化为可优化的资源问题，为受限显存环境下的长上下文推理提供了无需压缩模型质量的系统路径。
   - 来源: [arXiv cs.LG](https://arxiv.org/abs/2610.31633v1)

**直接 Pass@k 剪枝：平衡测试时推理候选的质量与多样性，八个开放权重模型上优于既有策略**
- 论文提出一种测试时推理剪枝方法，直接优化所选候选池的 pass@k，最大化至少一个部分解续写后得到正确答案的概率。该目标同时奖励高质量部分解并惩罚候选冗余，因此在统一准则中平衡质量与多样性。该方法在八个开放权重推理模型上优于现有质量导向和多样性导向剪枝策略；当保留数量适中的部分解以继续生成时，性能提升尤为明显。
  > 💡 直接以最终覆盖概率作为剪枝目标，比分别设置质量与多样性规则更贴近测试时扩展的实际目标，尤其适合需要在计算成本与候选覆盖率之间取舍的推理流程。
   - 来源: [arXiv cs.CL](https://arxiv.org/abs/2610.31667v1)

**Softmax 数值双缺陷修复：消除 Slingshot，并稳定蒸馏与权重衰减训练**
- 论文指出，标准 softmax、log-softmax 和交叉熵实现存在 Softmax Collapse 与 Softmax Cancellation 两类数值缺陷。Softmax Collapse 会在目标 logit 远大于其他 logit 时将其梯度舍入为零，Softmax Cancellation 则会在学生与教师 logits 相等时产生非零梯度。论文给出对应实现，消除了此前观察到的 Slingshot 现象，并改善了带权重衰减的 grokking、无权重衰减时的精度坍塌及蒸馏中的学生网络漂移。论文还发现，记忆完成后 logit 的增长受到权重衰减与 Adam 的 ε 超参数之间平衡的约束。
  > 💡 这类修复针对的是基础训练算子的数值稳定性，影响范围覆盖常规分类训练、蒸馏和 grokking，而不止于单一日志或单一模型问题。
   - 来源: [arXiv cs.LG](https://arxiv.org/abs/2610.31642v1)

**扩散语言模型黑盒攻击：以自然语言分布替代随机映射，字符级困惑度降至 3–5**
- 论文将连续潜空间黑盒攻击框架直接连接到扩散语言模型，替代原先通过随机映射和最近词元查找生成文本的环节，同时保留标准高斯潜变量形式及后续采样或优化过程。作者分别使用 RareTrap 进行基于采样的风险估计，并使用 ThinkTrap 开展基于优化的搜索。实验显示，RareTrap 的字符级困惑度从 10³–10⁷ 降至 3–5，ThinkTrap 从 20–28 降至 4.3–5.4；两种映射得到的模型风险估计可相差一个数量级。
  > 💡 生成式分布让攻击样本更接近自然语言，但不同映射对风险估计的数量级差异也表明，黑盒攻击结论必须明确提示词生成机制，避免把不可比的估计直接横向使用。
   - 来源: [arXiv cs.CL](https://arxiv.org/abs/2610.31558v1)

### X讨论
**三支团队一个月内推进LLM解码megakernels，覆盖TPU、AMD与GB300平台**
- SemiAnalysis称，一个月内有三支团队通过megakernels推进LLM解码，包括运行于Google TPU的Inferact、采用TileRT和FlyDSL的AMD，以及现已通过InferenceX上线的NVIDIA GB300方案。SemiAnalysis表示，将进一步分析这些推理提速方案背后的工程实现。Megakernels将通常由独立程序完成的计算工作合并执行。
  > 💡 多家芯片与软件团队并行探索megakernels，说明LLM推理优化正在从单一算子调优扩展到跨硬件的系统工程。
   - 来源: [@semianalysis_](https://x.com/SemiAnalysis_/status/2113054576844628113)


---
*更新时间: 2026-10-23 13:34*