# 大文件游戏上传指南

## 🎯 800MB游戏文件上传方案

### 方案一：GitHub Releases（推荐）

**优点**：
- 完全免费
- 无需额外软件
- GitHub官方支持
- 下载速度快

**步骤**：

1. **创建GitHub Release**
   - 进入您的GitHub仓库
   - 点击 "Releases" → "Create a new release"
   - 版本号：`v1.0`
   - 标题：`逃离鸭科夫 - 完整版`

2. **上传游戏文件**
   - 在 "Assets" 区域点击 "Attach binaries"
   - 选择您的 `escape-duckov.zip` 文件（800MB）
   - 等待上传完成（可能需要几分钟）

3. **获取下载链接**
   - 上传完成后，右键点击文件名 → "复制链接地址"
   - 链接格式：`https://github.com/用户名/仓库名/releases/download/v1.0/escape-duckov.zip`

4. **更新网站**
   - 将链接更新到 `index.html` 中

### 方案二：Git LFS（Git Large File Storage）

如果您的游戏需要版本控制：

```bash
# 安装Git LFS
git lfs install

# 跟踪大文件
git lfs track "*.zip"
git add .gitattributes

# 添加游戏文件
git add downloads/escape-duckov.zip
git commit -m "Add large game file with LFS"
git push origin main
```

### 方案三：分卷压缩（备用方案）

将800MB文件分割成多个小文件：

```bash
# 使用7-Zip或WinRAR分卷压缩
# 每个卷99MB，共9个文件
escape-duckov.zip.001
escape-duckov.zip.002
...
escape-duckov.zip.009
```

然后在网站提供多文件下载和合并说明。

## 📋 具体操作步骤

### 第一步：准备游戏文件

1. **压缩游戏**
   - 将游戏文件夹压缩为ZIP格式
   - 确保文件名：`escape-duckov.zip`
   - 检查文件完整性

2. **文件检查**
   ```bash
   # 检查文件大小
   dir escape-duckov.zip
   
   # 测试压缩文件完整性
   # 右键 → 测试压缩文件
   ```

### 第二步：上传到GitHub Releases

1. **创建Release**
   - 仓库页面 → "Releases" → "Create a new release"
   - 填写版本信息：
     ```
     Tag: v1.0
     Title: 逃离鸭科夫 v1.0 - 完整版
     Description: 
     这是一款精彩的冒险解谜游戏。
     
     系统要求：
     - Windows 10/11 64位
     - 内存：4GB以上
     - 显卡：支持DirectX 11
     - 存储空间：2GB可用空间
     
     安装说明：
     1. 下载并解压文件
     2. 运行 escape-duckov.exe
     3. 享受游戏！
     ```

2. **上传文件**
   - 点击 "Attach binaries"
   - 选择 `escape-duckov.zip`
   - 等待上传完成

### 第三步：获取下载链接

上传完成后：

1. **复制下载链接**
   - 右键点击上传的文件
   - 选择 "复制链接地址"
   - 链接类似：`https://github.com/username/repo/releases/download/v1.0/escape-duckov.zip`

2. **测试链接**
   - 在浏览器中访问链接
   - 确认能够正常下载

### 第四步：更新网站

更新 `index.html` 中的下载链接：

```html
<a href="https://github.com/您的用户名/fubao-games/releases/download/v1.0/escape-duckov.zip" 
   class="download-btn text-center">
    <i class="fas fa-download"></i> 下载游戏 (800MB)
</a>
```

## 🚀 其他免费云存储方案

如果GitHub上传速度慢，可以考虑：

### 1. Google Drive
- 免费存储：15GB
- 分享链接生成
- 需要Google账号

### 2. OneDrive
- 免费存储：5GB
- 微软账号
- 生成分享链接

### 3. 百度网盘
- 免费存储：2TB
- 需要提取码
- 国内速度快

### 4. 腾讯微云
- 免费存储：10GB
- QQ/微信账号
- 分享便捷

## 📊 下载链接格式示例

### GitHub Releases
```
https://github.com/username/fubao-games/releases/download/v1.0/escape-duckov.zip
```

### Google Drive
```
https://drive.google.com/uc?export=download&id=FILE_ID
```

### OneDrive
```
https://1drv.ms/u/s!FILE_ID
```

## ⚠️ 注意事项

1. **文件完整性**
   - 上传后测试下载
   - 检查文件是否损坏

2. **下载限制**
   - GitHub：100GB/月带宽限制
   - 其他云盘：有流量限制

3. **版权问题**
   - 确保游戏分发合法
   - 添加版权声明

4. **用户体验**
   - 提供文件大小信息
   - 添加下载说明
   - 提供备用下载链接

---

**推荐使用GitHub Releases方案**，完全免费且与您的网站完美集成！