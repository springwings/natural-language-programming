#!/usr/bin/env bash
# 推送《自然语言编程》到 GitHub
# 用法：  ./push-to-github.sh <你的GitHub用户名> [仓库名]
# 示例：  ./push-to-github.sh zhangsan natural-language-programming
#
# 前提：本机已配置 GitHub 凭证（Personal Access Token 或已登录 gh CLI）。

set -e
USERNAME="${1:?请提供 GitHub 用户名，例如： ./push-to-github.sh zhangsan}"
REPO="${2:-natural-language-programming}"
URL="https://github.com/${USERNAME}/${REPO}.git"

echo "目标仓库: $URL"

if git remote | grep -q '^origin$'; then
  echo "已存在 origin，更新为 $URL"
  git remote set-url origin "$URL"
else
  git remote add origin "$URL"
fi

git branch -M main
echo "正在推送到 GitHub ..."
git push -u origin main
echo "完成！仓库地址: https://github.com/${USERNAME}/${REPO}"
