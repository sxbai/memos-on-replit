#!/bin/bash

echo "run memos >>> $(date '+%Y-%m-%d %H:%M:%S')"

chmod +x ./memos

# 数据库文件存放的地方
if [ ! -d ./db ];then
    mkdir ./db
fi

MEMOS_URL=https://${REPL_SLUG}.${REPL_OWNER}.repl.co

echo "click url: $MEMOS_URL"

./memos --data ./db --mode prod --port 6969
