# AI Daily News 管线交接文档

> 本包为可直接运行的管线快照（代码 + 配置 + 名单 + 本文档），不含历史日报与任何账号凭据。接手后自建仓库、配好密钥即可跑通。
> **新手先看 `QUICKSTART.md`（10 步开箱指南），本文件是原理与故障排查手册。**

---

## 1. 产品是什么

**AI Daily News（AI 前沿动态）**：每日 AI 行研日报管线——自动抓取前 24 小时的 AI 新闻/论文/推文，经 LLM 筛选、排序、中文写作，生成一份 15-25 条的中文日报，发布到 GitHub Pages 并推送飞书群卡片。

- 内容五大分区：产业动态 / 初创&融资 / 研究关注 / X讨论 /（按需）模型前沿、算力追踪
- 质量基线：**宁缺毋滥**——凑数条目不如少几条；自动版允许人工砍条、手动补源

## 2. 产出物

| 产物 | 文件 |
|---|---|
| 日报正文 | `daily-ai-news-<date>.md` |
| 网页版 | `daily-ai-news-<date>.html` + `index.html`（生成器自动维护导航） |
| 移动端长图 | `daily-ai-news-<date>-mobile.png`（375px 宽 2x，飞书卡片用） |
| 线上地址 | 你自己的 GitHub Pages |
| 飞书卡片 | `pipeline_notify.py` / `screenshot_and_push.py` 推送 |
| 伴生产物 | `twitter-preview-<date>.md`（重点推文卡片） |
| 状态账本 | `archive/manifests/<date>.json`（running → ready → **published**，published 是"当天完成"的唯一判据） |

## 3. 自建仓库步骤（首次部署）

```bash
# 1. 解压本包，进入目录，初始化你自己的仓库
git init && git add -A && git commit -m "init: ai-daily-news pipeline"
git remote add origin <你的仓库地址> && git push -u origin main

# 2. 在仓库托管平台开启 GitHub Pages（建议：main 分支根目录），
#    并设置环境变量 SITE_BASE_URL 为你的站点根地址（如 https://<用户名>.github.io/<仓库名>），
#    飞书卡片里的"查看日报"按钮靠它拼接链接

# 3. 安装依赖
python3 -m pip install -r requirements.txt
python3 -m playwright install chromium

# 4. 配置密钥（见 §4），写入 ~/.zshrc 或仓库 .env（.env 需加入 .gitignore）

# 5. 建议的 .gitignore（新建）：
#    tweet_fetcher/api.key
#    cache/
#    logs/
#    __pycache__/
#    *.bak
#    注意：Subscriptions-OnMyMac.opml 建议提交进 git（它是抓取源唯一清单，
#    不提交会成为"暗依赖"——换机器 clone 后候选池会静默退化）

# 6. 定时任务（示例路径按你的 home 目录改）
#    crontab: 40 6 * * * /bin/bash ~/ai-daily-news/run.sh >> ~/ai-daily-news/logs/cron.log 2>&1
#    launchd 兜底（可选）：参考 run.sh 注释与 catchup.sh，每天多个时点检查
#    manifest 未 published 则重跑；plist 放 ~/Library/LaunchAgents/

# 7. 试跑
./run.sh <今天日期>
```

## 4. 密钥清单（全部自建，注册即得）

| 环境变量 | 用途 | 怎么获得 |
|---|---|---|
| `MINIMAX_API_KEY`（或 `LLM_API_KEY`） | LLM 筛选/写作，必需，缺失时 run.sh 直接终止 | MiniMax 开放平台（platform.minimaxi.com）注册后在 API Keys 页创建。换其他 Anthropic 兼容服务见 `llm_config.py` 头部注释 |
| `FEISHU_WEBHOOK` | 日报卡片推送飞书群 | 飞书群 → 设置 → 群机器人 → 添加"自定义机器人" → 复制 Webhook 地址 |
| `ZHIPU_API_KEY` | GLM 搜索/网页抓取降级通道 | 智谱开放平台（bigmodel.cn）注册后创建 |
| `TWITTERAPI_KEY` | Twitter 抓取（日报候选池的推文来源，必需） | twitterapi.io 注册后在 Dashboard 复制 |
| `FEISHU_TWITTER_WEBHOOK` | Twitter 预览卡片推送（可选） | 同 FEISHU_WEBHOOK，可指向同一个或另一个群机器人；不配则跳过预览推送 |

> Webhook 安全设置：如自定义机器人开了"自定义关键词"校验，关键词须包含「AI 前沿动态」（卡片标题依赖它通过校验）。

## 5. 每日运行时间线

```
06:40  crontab 跑 run.sh（抓取→LLM 处理→QA→截图→git push→飞书通知→标记 published→twitter 预览）
07:30/09/11/14/17/20  launchd 兜底 catchup.sh：当天 manifest 未 published 则重跑 run.sh
                      （注意：会重新生成当日 md，覆盖未提交的手工修改！见 §8.2）
上午   人工返工窗口（如需）：编辑当日 md → 重新生成 html/截图 → commit+push
```

## 6. 核心组件

| 文件 | 职责 |
|---|---|
| `run.sh` | 主管线入口：锁、manifest 状态机、截图、git push、通知、published 标记 |
| `feed_v5.py` | 抓取（RSS/Twitter/arXiv API）→ 候选池 → LLM 初排/分类/写作 → QA → ready。`--cache --date <date>` 重跑；`--from-cache` 不重新抓取 |
| `prompts/news_processor.md` `news_writer.md` `news_ranker.md` | LLM 分类/写作/排序规则（改分类行为先改这里） |
| `html_generator.py` | md → html + index 维护。`NEWS_DATE=<date> python3 html_generator.py` |
| `screenshot_and_push.py` | 移动端长图；带 FEISHU_WEBHOOK 时顺带推飞书。可 import `take_screenshot` 只截图不推群 |
| `twitter_push.py` | Twitter 预览卡片；重点推文次日回流日报候选池加分 |
| `qa.py` / `release_gate.py` | 质量门禁（low_value 与条数下限是警告，不阻塞发布） |
| `pipeline_manifest.py` | manifest 状态机工具 |
| `catchup.sh` | 兜底重跑 |
| `accounts.yaml` | Twitter 追踪账号（`feed_whitelist: true` 的账号抓到即算 AI 相关） |
| `Subscriptions-OnMyMac.opml` | RSS 抓取源清单（125 个），`feed_v5.py` 每次运行解析 |
| `config.json` | tier1 公司/高被引作者/领域关键词/顶会权重/分类与过滤词 |

## 7. 写作与分类规范（速查）

**标题**：方法名/产品名/公司名开头 + 核心贡献 + 关键数据；融资类必须带业务定语（"XX（做什么的）完成…"）；单一来源未证实的爆料标题带"据报道"限定；不用感叹号。

**Body**：单条 `- ` 开头的整段话（禁止拆多 bullet）；关键数据 `**加粗**`；3-6 句"问题→思路→结果"自足可读；写 body 前必须读过原文；引用媒体报道写"据报道"不点名媒体；禁止"首个/最大"等绝对判断除非原文支撑且带限定词；论文类不罗列作者名单、body 禁止出现 arXiv 编号。

**Insight（`> 💡`）**：只放编辑自己的分析判断，事实数据归 body；每条至少 1 条。

**分类边界**：
- 研究关注：仅限有 arXiv/顶会原文的学术工作
- 模型前沿：新模型发布 + benchmark；轻量/垂直/开源小模型 → 产业动态
- 公司官方博客的硬动作（产品/系统发布）→ 产业动态；观点文/评测 → X讨论
- 评测榜单、平台数据 → X讨论
- "VC 为被投锁 GPU/自建数据中心" → 算力追踪
- 云/芯片/基础设施 → 算力追踪；IPO/SPAC → 初创&融资

**来源**：成对来源（原文 + 推文）全部保留交叉链接；论文优先 arXiv 原文。

**要点速览**：逐字复用详细参考的条目标题，只能删减不能改写；删条目后同步删速览。

## 8. 故障手册

### 8.1 早晨日报没发出来
1. 查 `logs/catchup-history.log`、`logs/cron.log`
2. LLM 报"响应无效 ×3" → 大概率 MiniMax 瞬时故障，**直接重跑 `./run.sh`**
3. MiniMax 内容审核整包拦截（响应 `input new_sensitive (1026)`）：按块二分定位敏感候选 → 从 `cache/raw_news_<date>.json` 删掉该条 → `python3 feed_v5.py --from-cache --date <date>` → `run.sh <date>` 从 ready 直接发

### 8.2 兜底重跑覆盖手工版
手工改完 md 但没 commit、且当天 manifest 未 published 时，catchup 会重跑 run.sh **重新生成 md 覆盖手工版**。对策：**手工改完立即 commit**；恢复靠 git 历史。

### 8.3 周末 arXiv 为空
正常现象（arXiv 周末不收新投稿，周一上午补），不是故障。

### 8.4 index.html 损坏
对 index 跑 grep 重定向前先备份；恢复用 `git show <prev>:index.html`。周末合并版（`<date>_<date>.md`）存在后再跑单日生成器会把 index 插乱，生成后检查 `sep-<日期>` 结构。

### 8.5 飞书 webhook 失败
先重试一次（网络瞬断常见）；webhook 有关键词校验，卡片标题必须含「AI 前沿动态」。

### 8.6 抓取降级链
web-reader → curl（TechCrunch/Fortune 可直抓；The Information 用 Googlebot UA 只拿 meta；X 靠 twitterapi.io）→ GLM 搜索（有配额）。

## 9. 特殊产物（按需）

- **周末合并版**：以周日版为底并入周六独有条目，命名 `<date>_<date>.md`；生成用 `python3 -c "from html_generator import md_to_html; ..."` 绕开 main 的 strptime

## 10. 接手检查清单

- [ ] 自建仓库 + 开 Pages，`./run.sh` 试跑一次成功
- [ ] 自建 §4 的 5 项密钥并配置
- [ ] crontab / launchd 按自己的 home 路径配好
- [ ] 改 `config.json` 的 `classification.model_keywords`（模型名列表已过时，需更新到当前世代）
- [ ] 按需增删 `accounts.yaml`（Twitter）与 OPML（RSS）名单
- [ ] 建立"被纠正后记规则"的习惯：把每次人工返工的教训按 `feedback.md` 的条目格式追加记录，并沉淀进 `prompts/` 对应文件，管线才会越跑越准
