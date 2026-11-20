# 如何把这本书发布到 GitHub

本地仓库已就绪：34 章 × 中英双语、8 张配图、完整目录与开源协议，已提交到 `main` 分支。**只差推送到 GitHub**——因为本机目前没有配置 GitHub 凭证（没有 `gh` CLI，也没有 token），这一步需要你提供凭证。

下面给出三种方式，任选其一。

## 方式一：用 Personal Access Token（推荐，最快）

1. 打开 https://github.com/settings/tokens ，点 **Generate new token (classic)**。
2. 勾选 `repo` 权限，生成后复制 token（只显示一次，妥善保存）。
3. 先在 GitHub 网页上创建一个空仓库（例如 `natural-language-programming`），**不要**勾选 README/License（本地已有）。
4. 在本书目录执行（把 `<用户名>` 和 `<token>` 换成你自己的）：

```bash
cd natural-language-programming
git remote add origin https://<用户名>:<token>@github.com/<用户名>/natural-language-programming.git
git branch -M main
git push -u origin main
```

推送成功后，建议把地址里的 token 去掉，避免泄露：

```bash
git remote set-url origin https://github.com/<用户名>/natural-language-programming.git
```

## 方式二：安装并登录 GitHub CLI

```bash
# 安装 gh（Windows 可用 winget）
winget install --id GitHub.cli

# 登录（按提示在浏览器授权）
gh auth login

# 创建仓库并推送（一行搞定）
gh repo create natural-language-programming --public --source=. --remote=origin --push
```

## 方式三：用仓库自带的辅助脚本

凭证配置好后（方式一的 token 或方式二的 gh 登录），直接运行：

```bash
./push-to-github.sh <你的GitHub用户名> [仓库名]
# 例： ./push-to-github.sh zhangsan
```

脚本会自动设置 remote、切到 `main` 分支并推送。

## 推送前检查清单

- [ ] 已在 GitHub 创建空仓库（方式一、三需要）
- [ ] 凭证已配置（token 或 gh 登录）
- [ ] 确认仓库为 public（开源）或按你需要设为 private

## 推送后建议

- 在仓库 Settings → Pages 里开启 GitHub Pages，可选择把 `README.md` 作为首页展示。
- 在 README 里补充你的名字、项目初衷、二维码或捐赠方式（如需）。
- 给项目打上主题标签：`book`、`education`、`ai`、`natural-language-programming`、`chinese`。
