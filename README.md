# 福宝游戏网 - GitHub Pages部署指南

这是一个现代化的游戏下载网站，支持通过GitHub Pages免费托管。

## 🎮 网站特色

- **响应式设计** - 支持PC、平板、手机
- **现代化UI** - Bootstrap 5 + 自定义样式
- **游戏下载** - 提供游戏文件下载链接
- **动画效果** - 流畅的用户体验
- **SEO优化** - 利于搜索引擎收录

## 📁 文件结构

```
FubaoGameSite/
├── index.html              # 主页面
├── README.md              # 说明文档
└── downloads/             # 游戏文件目录
    └── escape-duckov.zip   # 逃离鸭科夫游戏文件
```

## 🚀 GitHub Pages部署步骤

### 第一步：创建GitHub仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角的 "+" → "New repository"
3. 仓库名称：`fubao-games` （或您喜欢的名字）
4. 选择 **Public** （公开仓库才能使用GitHub Pages）
5. 勾选 "Add a README file"
6. 点击 "Create repository"

### 第二步：上传网站文件

#### 方法1：通过网页上传（推荐新手）

1. 进入您创建的仓库
2. 点击 "Add file" → "Upload files"
3. 将 `FubaoGameSite` 文件夹中的所有文件拖拽上传
4. 在提交信息中填写："Initial commit - 福宝游戏网"
5. 点击 "Commit changes"

#### 方法2：通过Git命令（推荐有经验的用户）

```bash
# 克隆仓库
git clone https://github.com/您的用户名/fubao-games.git
cd fubao-games

# 复制网站文件
cp -r /d/Program\ Files/Python/FubaoGameSite/* .

# 提交更改
git add .
git commit -m "Initial commit - 福宝游戏网"
git push origin main
```

### 第三步：启用GitHub Pages

1. 在仓库页面，点击 "Settings"
2. 在左侧菜单中找到 "Pages"
3. 在 "Source" 部分选择：
   - **Branch**: `main`
   - **Folder**: `/ (root)`
4. 点击 "Save"

### 第四步：访问网站

等待1-2分钟后，您的网站将在以下地址可用：

```
https://您的用户名.github.io/fubao-games
```

## 🎯 添加游戏文件

### 准备游戏文件

1. 将"逃离鸭科夫"游戏打包成ZIP文件
2. 重命名为：`escape-duckov.zip`
3. 在仓库中创建 `downloads` 文件夹
4. 上传游戏文件到 `downloads` 文件夹

### 更新下载链接

在 `index.html` 中找到这一行：
```html
<a href="downloads/escape-duckov.zip" class="download-btn text-center">
```

确保链接指向正确的文件路径。

## 📝 自定义网站内容

### 修改网站信息

编辑 `index.html` 中的以下内容：

1. **网站标题**：
```html
<title>福宝游戏网 - 免费游戏下载</title>
```

2. **游戏信息**：
```html
<h3 class="game-title">逃离鸭科夫</h3>
<p class="game-description">游戏描述...</p>
```

3. **联系方式**：
```html
<p class="text-white-50">
    <i class="fas fa-envelope"></i> your-email@example.com<br>
    <i class="fas fa-phone"></i> 您的联系方式
</p>
```

### 添加更多游戏

复制游戏卡片代码并修改：
```html
<div class="col-lg-4 col-md-6">
    <div class="game-card">
        <!-- 游戏内容 -->
    </div>
</div>
```

## 🔧 高级功能

### 添加自定义域名

1. 在 `FubaoGameSite` 文件夹中创建 `CNAME` 文件
2. 在文件中写入您的域名：`yourdomain.com`
3. 上传CNAME文件到仓库根目录
4. 在域名提供商处配置DNS

### 添加Google Analytics

在 `</head>` 标签前添加：
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 📊 网站统计

GitHub Pages提供基本的访问统计：

1. 在仓库页面点击 "Insights"
2. 选择 "Traffic" 查看访问数据

## 🛠️ 故障排除

### 常见问题

1. **网站无法访问**
   - 检查仓库是否为Public
   - 确认Pages设置正确
   - 等待几分钟让GitHub处理

2. **游戏下载失败**
   - 检查文件路径是否正确
   - 确认文件大小不超过GitHub限制（100MB）
   - 对于大文件，考虑使用GitHub Releases

3. **样式显示异常**
   - 检查CDN链接是否可访问
   - 确认文件编码为UTF-8

### 联系支持

如果遇到问题，可以：
- 查看GitHub Pages文档
- 在GitHub社区提问
- 联系网站开发者

## 📈 推广网站

### SEO优化建议

1. 在社交媒体分享网站链接
2. 在游戏相关论坛宣传
3. 优化网站关键词
4. 定期更新游戏内容

### 社交媒体集成

可以添加分享按钮：
```html
<div class="share-buttons">
    <a href="#" class="btn btn-primary">分享到微信</a>
    <a href="#" class="btn btn-info">分享到QQ</a>
</div>
```

---

**恭喜！** 您现在拥有了一个专业的游戏下载网站！🎉

开始上传您的游戏文件，让更多人享受游戏的乐趣吧！