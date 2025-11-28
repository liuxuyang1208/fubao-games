@echo off
echo 正在快速清理大量小文件...
echo 这可能需要几分钟，请耐心等待...
echo.

REM 删除所有错误的分卷文件
echo 删除 escape-duckov_2.7z.* 文件...
del /f /q "escape-duckov_2.7z.*" >nul 2>&1

echo 删除临时文件...
del /f /q "*.tmp" >nul 2>&1

echo 删除其他分卷文件...
del /f /q "escape-duckov-split.*" >nul 2>&1

echo.
echo 清理完成！
echo.
echo 如果文件还在，请尝试：
echo 1. 重启电脑后再次运行此脚本
echo 2. 或者直接删除整个downloads文件夹重新创建
echo.
pause