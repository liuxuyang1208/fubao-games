@echo off
echo 正在重新创建干净的downloads文件夹...
echo.

REM 先重命名旧文件夹（如果删除很慢）
if exist "downloads" (
    echo 重命名旧文件夹为 downloads_old...
    ren "downloads" "downloads_old"
)

REM 创建新的干净文件夹
echo 创建新的downloads文件夹...
mkdir "downloads"

echo.
echo ✅ 完成！新的downloads文件夹已创建！
echo.
echo 旧文件夹已重命名为 downloads_old
echo 等系统空闲时会自动删除
echo.
echo 现在您可以安全地将游戏文件放入新的downloads文件夹了！
echo.
pause