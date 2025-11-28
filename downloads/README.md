# 游戏文件下载目录

这个目录用于存放可供下载的游戏文件。

## 📁 文件说明

### escape-duckov.zip
- **游戏名称**: 逃离鸭科夫
- **文件大小**: 125MB
- **支持系统**: Windows 10/11
- **游戏类型**: 冒险解谜

## 📋 上传游戏文件步骤

1. **准备游戏文件**
   - 将游戏文件夹压缩为ZIP格式
   - 确保文件名不包含特殊字符
   - 文件大小建议不超过100MB

2. **上传到GitHub**
   ```bash
   # 方法1：网页上传
   # 在GitHub仓库网页界面直接上传文件
   
   # 方法2：Git命令
   git add downloads/your-game.zip
   git commit -m "Add new game: Your Game Name"
   git push origin main
   ```

3. **更新网站链接**
   - 编辑 `../index.html`
   - 添加新的游戏卡片
   - 更新下载链接

## ⚠️ 注意事项

- **文件大小**: GitHub单文件限制100MB，大文件请使用GitHub Releases
- **版权**: 确保您有分发游戏的合法权利
- **安全**: 定期检查文件安全性

## 🔄 GitHub Releases（大文件方案）

对于超过100MB的游戏文件：

1. 在仓库页面点击 "Releases"
2. 点击 "Create a new release"
3. 上传游戏文件作为附件
4. 使用生成的链接更新网站

示例链接格式：
```
https://github.com/用户名/仓库名/releases/download/v1.0/game-file.zip
```

## 📊 下载统计

GitHub提供基础的下载统计，您可以在：
- Releases页面查看每个版本的下载次数
- Insights → Traffic查看仓库访问数据

---

**提示**: 建议为每个游戏创建详细的说明文件，包含游戏介绍、系统要求、安装说明等。