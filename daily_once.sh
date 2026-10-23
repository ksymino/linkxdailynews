#!/bin/bash
cd "$HOME/ai-daily-news" || exit 1
[ -f "$HOME/.ai-daily-news.env" ] && source "$HOME/.ai-daily-news.env"
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/miniconda3/bin:$HOME/anaconda3/bin:$PATH"

TODAY=$(date +%F)
STAMP="logs/.done-$TODAY"
[ -f "$STAMP" ] && exit 0                        # 今天已成功，跳过
[ "$(date +%H)" -lt 8 ] && exit 0                # 8 点前不跑

# 等网络/代理就绪，最多等 5 分钟
for i in $(seq 1 30); do
  curl -s -m 5 -o /dev/null https://github.com && break
  sleep 10
done

echo "===== $(date) 开始运行 ====="
if /bin/bash run.sh; then
  touch "$STAMP"
  echo "===== $(date) 成功 ====="
else
  echo "===== $(date) 失败，下个小时重试 ====="
fi
