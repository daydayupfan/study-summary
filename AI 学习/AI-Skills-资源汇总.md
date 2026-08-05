# 🤖 AI Skills 优秀资源汇总

> 整理日期：2026-08-05  
> 涵盖 Claude Code、Trae IDE、Cursor 等主流 AI 编程助手的 Skill 资源

---

## 📖 什么是 Skill？

Skill（技能）是一组包含指令、脚本和资源的文件夹，AI 助手按需加载，用于在特定任务中提供可复用、专业化的能力。可以把它理解为给 AI 的"专业能力说明书"。

### Skill 的三大优势

| 特性 | 说明 |
|---|---|
| **结构化** | 一个 Skill 对应一个 `SKILL.md` 文件，描述任务目标、约束、流程、示例 |
| **按需加载** | AI 仅在需要时才加载 Skill 的详细内容，节省 Token 消耗 |
| **可复用** | 一次编写，跨项目、跨团队复用 |

---

## 🏛️ 一、官方 Skills（Anthropic 出品）

### 1. [anthropics/skills](https://github.com/anthropics/skills) ⭐ 100k+

> **GitHub**: https://github.com/anthropics/skills  
> **安装**: `npx skills add anthropics/skills --skill <skill-name> -g -y`

Anthropic 官方出品的 Skills 集合，共 16 个生产级技能，分为 5 大类：

| 分类 | 技能 | 说明 |
|---|---|---|
| **文档处理** | `docx` | 创建、编辑 Word 文档 |
| | `pdf` | PDF 提取、创建、合并/拆分 |
| | `pptx` | 创建、编辑 PowerPoint 演示文稿 |
| | `xlsx` | 创建、编辑 Excel 电子表格 |
| **创意设计** | `algorithmic-art` | 算法艺术生成 |
| | `canvas-design` | Canvas 设计 |
| | `frontend-design` | 前端设计 |
| | `slack-gif-creator` | Slack GIF 创建 |
| **开发技术** | `web-artifacts-builder` | Web 构件生成 |
| | `mcp-builder` | MCP 服务器构建 |
| | `webapp-testing` | Web 应用测试 |
| **企业沟通** | `brand-guidelines` | 品牌指南应用 |
| | `internal-comms` | 内部沟通文案 |
| **元技能** | `skill-creator` | 创建新 Skill 的 Skill |

---

## 🇨🇳 二、Trae IDE 专属 Skills

### 2. [boshi-xixixi/TraeSkill](https://github.com/boshi-xixixi/TraeSkill) ⭐ 推荐

> **GitHub**: https://github.com/boshi-xixixi/TraeSkill  
> **安装**: 克隆到项目 `.trae/skills/` 或全局 `%userprofile%/.trae/skills/`

专为 Trae IDE 打造的标准化 AI 技能集合，覆盖完整软件开发生命周期：

| 编号 | 技能 | 说明 |
|---|---|---|
| 00 | `Meta_Dispatcher` | 任务调度与需求拆解 |
| 01 | `ProductManager_Brainstorming` | 需求头脑风暴与 PRD 生成 |
| 01 | `Architect_TechStackSelector` | 技术栈选型与评估 |
| 02 | `Architect_APIDesign` | REST/GraphQL API 设计 |
| 02 | `Designer_UIUXIntelligence` | UI/UX 智能设计 |
| 03 | `Developer_ReactBestPractices` | React 最佳实践 |
| 03 | `Developer_ArtifactsBuilder` | Web 构件生成 |
| 03 | `Mobile_Flutter` | Flutter 移动开发 |
| 04 | `Tester_BrowserAutomation` | 浏览器自动化测试 |
| 05 | `Backend_Node` | Node.js 后端开发 |
| 05 | `Backend_Python` | Python 后端开发 |
| 05 | `Backend_Database` | 数据库操作 |
| 05 | `DevOps_GitWorkflow` | Git 工作流 |
| 05 | `DevOps_GitOps` | GitOps 运维 |
| 06 | `SEO_ContentStrategy` | SEO 内容策略 |
| 06 | `SEO_Technical` | SEO 技术优化 |
| 06 | `SEO_Analytics` | SEO 数据分析 |
| 06 | `Office_Docx` | Office 文档自动化 |

### 3. [HighMark-31/TRAE-Skills](https://github.com/HighMark-31/TRAE-Skills) ⭐ 278

> **GitHub**: https://github.com/HighMark-31/TRAE-Skills

150+ 个专业化 AI Skills，覆盖以下领域：

- 🔧 `ai_engineering` — AI 工程
- 🏗️ `architecture` — 架构设计
- 🔙 `backend` — 后端开发
- 📝 `code_management` — 代码管理
- 🚀 `devops` — DevOps 运维
- 📄 `documentation` — 文档生成
- 🎨 `frontend` — 前端开发
- 📱 `mobile` — 移动端开发
- 🔒 `security` — 安全
- 🧪 `testing` — 测试

### 4. [yihui504/TRAE-skills-from-CC-plugins](https://github.com/yihui504/TRAE-skills-from-CC-plugins) ⭐ 推荐

> **GitHub**: https://github.com/yihui504/TRAE-skills-from-CC-plugins

将知名 Claude Code 插件（Superpowers、oh-my-claudecode、get-shit-done 等）适配到 Trae CN SOLO 模式的技能合集，包含 48+ 个深度优化技能。

### 5. [AlperGuven/TRAE-Skills](https://github.com/AlperGuven/TRAE-Skills)

> **GitHub**: https://github.com/AlperGuven/TRAE-Skills

面向 Vue 3 / Vite / Pinia 前端开发的 Trae Skills：

- `agent-browser` — 浏览器自动化（轻量 Playwright 替代方案）
- `vue-i18n` — Vue 3 国际化实现指南
- `vuelidate-i18n` — 表单验证 + 国际化错误消息

---

## 🌍 三、社区精品 Skills 集合

### 6. [obra/superpowers](https://github.com/obra/superpowers) ⭐ 极高

> **GitHub**: https://github.com/obra/superpowers  
> **安装**: Claude Code 中执行 `/plugin marketplace add obra/superpowers-marketplace`

让 Claude Code 像资深工程师一样工作的核心技能库，14 个技能：

| 技能 | 说明 |
|---|---|
| `brainstorming` | 在编码前探索需求，苏格拉底式提问 |
| `test-driven-development` | 强制执行 TDD（红-绿-重构）流程 |
| `systematic-debugging` | 4 步科学调试法，找根因 |
| `writing-plans` | 将需求拆解为 2-5 分钟小任务 |
| `executing-plans` | 执行计划并设置审查检查点 |
| `subagent-driven-development` | 多子代理并行开发 |
| `dispatching-parallel-agents` | 并发子代理工作流 |
| `requesting-code-review` | 请求代码审查 |
| `receiving-code-review` | 处理审查反馈 |
| `verification-before-completion` | 完成前验证检查清单 |
| `using-git-worktrees` | 并行分支管理 |
| `finishing-a-development-branch` | 合并/PR 决策工作流 |
| `writing-skills` | 创建新 Skill 的元技能 |
| `using-superpowers` | 如何调用和使用技能 |

### 7. [abubakarsiddik31/claude-skills-collection](https://github.com/abubakarsiddik31/claude-skills-collection)

> **GitHub**: https://github.com/abubakarsiddik31/claude-skills-collection

**218 个技能**，覆盖 13 个类别（截至 2026-07-12）：

| 类别 | 技能数 |
|---|---|
| 💻 开发与代码工具 | 72 |
| 📣 营销与 SEO | 20 |
| 📝 写作与研究 | 20 |
| 🤝 协作与项目管理 | 18 |
| ⚙️ 工具与自动化 | 25 |
| 🔐 安全与测试 | 13 |
| 📚 学习与知识 | 14 |
| 🎨 创意与设计 | 9 |
| 💼 职业与求职 | 6 |
| 🎥 媒体与内容 | 6 |
| 🔬 科研工具 | 5 |
| 📊 数据分析 | 5 |
| 📄 文档技能 | 5 |

🔥 热门推荐：
- `grill-me` — 执行前压测计划和假设
- `tdd` — 红/绿/重构工作流
- `diagnosing-bugs` — 规范化的根因调试循环
- `handoff` — 会话/代理间紧凑交接笔记

---

## 📚 四、Skill 发现与索引

### 8. [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) ⭐ 10.9k

> **GitHub**: https://github.com/travisvn/awesome-claude-skills

Claude Skills 生态系统的"地图"——官方技能 + 社区技能 + 教程 + 安全指南，一站式发现。

### 9. [hmzainjamil/awesome-claude-code](https://github.com/hmzainjamil/awesome-claude-code) ⭐ 45k+

> **GitHub**: https://github.com/hmzainjamil/awesome-claude-code

专家精选的 Claude Code 资源列表，200+ 条目，包含 Skills、Plugins、MCP、Hooks、Agents、Workflows，每周 CI 更新。

### 10. [codetocloud.io - 10 GitHub Repos](https://codetocloud.io/blog/claude-code-repos-engineering-team)

> **文章**: 10 个 GitHub 仓库，把 Claude Code 从聊天机器人变成工程团队

推荐阅读的实战文章，包含已验证的仓库列表和安装优先级。

---

## 🛠️ 五、Skill 开发工具

### 11. Skill Creator（元技能）

> **来源**: 内置在 Claude.ai / Claude Code 中  
> **使用**: 对 AI 说 "Help me build a skill using skill-creator"

用于创建新 Skill 的元技能，可自动从描述生成 Skill 结构，并提供审查和建议。

### 12. [anthropics/skills 模板](https://github.com/anthropics/skills/tree/main/template)

> **路径**: https://github.com/anthropics/skills/tree/main/template

官方 Skill 模板，包含标准的 `SKILL.md` 文件结构。

---

## 🎯 六、Skill 推荐学习路径

### 入门级（先了解 Skill 是什么）

1. 阅读 [Trae 官方 Skill 文档](https://docs.trae.ai/ide/skills?_lang=zh)
2. 浏览 [Awesome Claude Skills](https://github.com/travisvn/awesome-claude-skills)

### 实践级（开始使用 Skill）

3. 安装 [boshi-xixixi/TraeSkill](https://github.com/boshi-xixixi/TraeSkill)（如果你是 Trae 用户）
4. 安装 [obra/superpowers](https://github.com/obra/superpowers)（如果你是 Claude Code 用户）
5. 安装 [anthropics/skills](https://github.com/anthropics/skills) 官方技能

### 进阶级（创建自己的 Skill）

6. 学习 [Anthropic Skill 构建完整指南](https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf)
7. 使用 `skill-creator` 元技能创建你的第一个 Skill
8. 参考 [HighMark-31/TRAE-Skills](https://github.com/HighMark-31/TRAE-Skills) 学习 Skill 编写

---

## 📥 快速安装指南

### Trae IDE 安装 Skill

```powershell
# 全局安装（所有项目可用）
git clone https://github.com/boshi-xixixi/TraeSkill.git
Copy-Item -Path ".\TraeSkill\.trae\skills\*" -Destination "$env:USERPROFILE\.trae\skills\" -Recurse -Force

# 项目级安装（仅当前项目）
New-Item -ItemType Directory -Path ".\.trae\skills" -Force
Copy-Item -Path ".\TraeSkill\.trae\skills\*" -Destination ".\.trae\skills\" -Recurse -Force
```

### Claude Code 安装 Skill

```bash
# 安装官方 Skills
npx skills add anthropics/skills --skill skill-creator -g -y

# 安装 Superpowers 插件
/plugin marketplace add obra/superpowers-marketplace
/plugin install superpowers@superpowers-marketplace
```

---

## ⚠️ 注意事项

1. **Skill 兼容性**：Claude Code 的 Skill 格式（`SKILL.md`）与 Trae 的 Skill 格式基本兼容，但部分依赖 MCP Server 的 Skill 需要额外配置
2. **Token 消耗**：全局安装过多 Skill 会增加元数据扫描开销，建议按需安装项目级 Skill
3. **安全提醒**：只从可信来源安装 Skill，避免安装包含恶意脚本的 Skill
4. **版本要求**：Trae 需要 ≥ V3.3.21，Claude Code 需要最新版本

---

> 💡 **提示**: 将此文件放在项目根目录，方便随时查阅和更新。如果你发现了新的优秀 Skill 仓库，欢迎 PR 补充！