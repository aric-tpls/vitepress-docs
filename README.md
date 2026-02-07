# VitePress 文档模板

一个基于 VitePress 的文档站点模板，支持：
- 📝 Markdown 编写
- 🔍 本地全文搜索
- 🎨 简洁设计
- 📱 响应式布局
- 🌐 双语支持（中文/英文）
- ⚡ PWA 支持

## 使用模板

### 使用 rifc 替换

1. 复制模板到新目录
2. 修改 `rif.config.yaml` 中的变量值
3. 运行替换：

```bash
# 设置环境变量（可选）
export PROJECT_NAME=my-docs
export SITE_TITLE=My Docs
export SITE_DESCRIPTION=My personal documentation
export GITHUB_USERNAME=johndoe
export AUTHOR_NAME=John Doe
export SITE_BASE=/

# 执行替换
rifc
```

## 开发

```bash
# 安装依赖
pnpm install

# 启动开发服务器
pnpm dev

# 构建生产版本
pnpm build

# 预览生产构建
pnpm preview
```

## 项目结构

```
├── docs/
│   ├── .vitepress/
│   │   ├── config.mts       # VitePress 配置
│   │   ├── pwa.config.ts    # PWA 配置
│   │   └── theme/           # 自定义主题
│   ├── public/              # 静态资源
│   ├── posts/               # 中文文档
│   ├── en/posts/            # 英文文档
│   ├── index.md             # 中文首页
│   └── en/index.md          # 英文首页
├── .env                     # 环境变量
├── package.json
└── rif.config.yaml          # 模板配置
```

## 添加内容

在 `docs/posts/` 或 `docs/en/posts/` 目录下创建 `.md` 文件，侧边栏会自动生成。

## 配置

编辑 `docs/.vitepress/config.mts` 可自定义：
- 站点标题和描述
- 导航菜单
- 主题设置
- 社交链接

编辑 `.env` 配置部署路径：
```
VITEPRESS_BASE=/your-project-name/
```

## 部署到 GitHub Pages

1. 在 GitHub 仓库设置中，将 Source 设为 `GitHub Actions`
2. 修改 `.github/workflows/deploy.yml` 中的配置
3. 推送代码，自动部署
