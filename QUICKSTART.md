# 开箱指南：10 步跑通你的第一份日报

> 按顺序复制粘贴即可，不需要懂代码。遇到问题看文末「常见报错」；想深入了解原理看 `HANDOVER.md`。

---

## 你需要提前准备的东西（没有就走不下去）

| # | 东西 | 去哪拿 |
|---|---|---|
| A | 一台 Mac 或 Linux 电脑（长期开机，日报每天早上自动跑） | — |
| B | GitHub 账号 + 一个新建的空仓库（建议公开，要用它的免费网页托管） | github.com |
| C | 5 个密钥（全部自己注册就有，见包内 `HANDOVER.md` §4 的获取方法） | 各官方平台 |
| D | Python 3.10+（Mac 终端输入 `python3 --version` 检查） | python.org |

---

## 开工

### 第 1 步：把包放进电脑，起个目录

```bash
mkdir -p ~/ai-daily-news
# 把交接包里所有文件复制/解压到 ~/ai-daily-news 里，然后：
cd ~/ai-daily-news
ls   # 应该能看到 run.sh、feed_v5.py、HANDOVER.md 等程序文件，
     # 以及大量 daily-ai-news-日期.md/.html —— 那是历史日报成果，直接一起用
```

### 第 2 步：装依赖（一次性）

```bash
python3 -m pip install -r requirements.txt
python3 -m playwright install chromium
```

### 第 3 步：填密钥

把要来的密钥写进 `~/.zshrc`（Linux 是 `~/.bashrc`），逐行粘贴：

```bash
cat >> ~/.zshrc <<'EOF'
export MINIMAX_API_KEY="这里填要来的key"
export FEISHU_WEBHOOK="这里填要来的飞书群机器人地址"
export ZHIPU_API_KEY="这里填要来的key"
export TWITTERAPI_KEY="这里填要来的twitterapi.io的key"
EOF
source ~/.zshrc
```

### 第 4 步：连接你自己的 GitHub 仓库

```bash
git init
git add -A
git commit -m "init: ai-daily-news"
git remote add origin https://github.com/你的用户名/你的仓库名.git
git push -u origin main
```

### 第 5 步：打开免费网页托管（GitHub Pages）

1. 浏览器打开你的仓库 → **Settings** → 左侧 **Pages**
2. Source 选 **Deploy from a branch**，Branch 选 `main`、目录 `/ (root)`，点 Save
3. 等几分钟，页面顶部会出现你的网址，形如 `https://你的用户名.github.io/你的仓库名/`
4. 把这个网址也写进 `~/.zshrc`（日报卡片上的"查看日报"按钮靠它）：

```bash
echo 'export SITE_BASE_URL="https://你的用户名.github.io/你的仓库名"' >> ~/.zshrc
source ~/.zshrc
```

### 第 6 步：手动试跑一次（最重要的验证）

```bash
cd ~/ai-daily-news
./run.sh
```

等 10-20 分钟。**成功的样子**：终端最后打印 `✅ xxx 已发布`。

然后打开三个地方确认：
- 网页：`https://你的用户名.github.io/你的仓库名/`（能看到今天日报）
- 飞书群：收到一张蓝色卡片
- 本地：多了 `daily-ai-news-日期.md / .html / -mobile.png` 三个文件

### 第 7 步：设置每天自动跑

```bash
crontab -e
```
在里面加一行（意思是每天早上 6:40 自动运行）：
```
40 6 * * * /bin/bash ~/ai-daily-news/run.sh >> ~/ai-daily-news/logs/cron.log 2>&1
```
保存退出。**明天早上 7 点左右去飞书群看卡片**——收到了就说明全自动跑通了。

### 第 8 步（强烈建议）：设置"补跑"保险

万一早上那次失败（断网、API 抽风），这个保险会在当天多个时点自动重试。

先把下面命令里的 `你的用户名` 替换成你 Mac 的登录用户名（终端输入 `whoami` 查看），再整段粘贴执行：

```bash
cat > ~/Library/LaunchAgents/com.ai-daily-news.catchup.plist <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0"><dict>
<key>Label</key><string>com.ai-daily-news.catchup</string>
<key>ProgramArguments</key><array><string>/bin/bash</string><string>/Users/你的用户名/ai-daily-news/catchup.sh</string></array>
<key>StartCalendarInterval</key><array>
<dict><key>Hour</key><integer>7</integer><key>Minute</key><integer>30</integer></dict>
<dict><key>Hour</key><integer>9</integer><key>Minute</key><integer>0</integer></dict>
<dict><key>Hour</key><integer>11</integer><key>Minute</key><integer>0</integer></dict>
<dict><key>Hour</key><integer>14</integer><key>Minute</key><integer>0</integer></dict>
<dict><key>Hour</key><integer>17</integer><key>Minute</key><integer>0</integer></dict>
<dict><key>Hour</key><integer>20</integer><key>Minute</key><integer>0</integer></dict>
</array>
</dict></plist>
EOF
launchctl load ~/Library/LaunchAgents/com.ai-daily-news.catchup.plist
```

### 第 9 步：日常维护（每天 5 分钟，可选）

自动版发出后，如果想人工增删条目：直接编辑 `daily-ai-news-日期.md`，然后：

```bash
cd ~/ai-daily-news
NEWS_DATE=日期 python3 html_generator.py
python3 -c "import asyncio; from screenshot_and_push import take_screenshot; asyncio.run(take_screenshot('日期'))"
git add -A && git commit -m "curate 日期" && git push
```

⚠️ **铁律：手工改完 md 必须马上 commit**，否则补跑保险会把它覆盖回自动版。

### 第 10 步：知道去哪改东西

| 想改什么 | 改哪个文件 |
|---|---|
| 追踪哪些 Twitter 账号 | `accounts.yaml` |
| 抓哪些网站/RSS | `Subscriptions-OnMyMac.opml` |
| AI 怎么写标题/分类 | `prompts/` 里的 3 个文件 |
| 公司/学者权重、过滤词 | `config.json` |

---

## 常见报错

| 现象 | 原因 | 解法 |
|---|---|---|
| `MINIMAX_API_KEY 未设置` | 密钥没写进 zshrc 或没 source | 回到第 3 步 |
| 跑完但飞书没卡片 | FEISHU_WEBHOOK 没配/网络瞬断 | `echo $FEISHU_WEBHOOK` 检查；重跑一次 |
| 跑完但网页 404 | Pages 没开或没等生效 | 回到第 5 步；Pages 生效要几分钟 |
| LLM 报"响应无效" | MiniMax 偶发抽风 | 什么都不改，直接重跑 `./run.sh` |
| 周末论文条目很少 | arXiv 周末不收新投稿 | 正常现象，别排查 |
| 刚接手头 3 天出现重复报道 | 跨天去重需要 3 天历史存档，新环境自动重建 | 正常现象，第 4 天起恢复 |
| git push 被拒 | 别的机器也推过 | `git pull --rebase` 后再 push |

## 三条心法

1. **published 是唯一真理**：当天到底发没发成功，只看终端是否打出 `✅ 已发布`，不看感觉
2. **手工改动马上 commit**：不 commit 的修改随时会被自动补跑冲掉
3. **重跑优先于排查**：八成故障重跑一次就好；重跑两遍还不行，再去翻 `HANDOVER.md` §8 故障手册
