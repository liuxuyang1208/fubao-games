@echo off
echo 正在查找名为"截图"的图片文件...
echo.

echo 检查用户桌面:
if exist "%USERPROFILE%\Desktop\截图*" (
    echo 在用户桌面找到:
    dir "%USERPROFILE%\Desktop\截图*" /b
    echo.
)

echo 检查公共桌面:
if exist "C:\Users\Public\Desktop\截图*" (
    echo 在公共桌面找到:
    dir "C:\Users\Public\Desktop\截图*" /b
    echo.
)

echo 检查用户文档:
if exist "%USERPROFILE%\Documents\截图*" (
    echo 在用户文档找到:
    dir "%USERPROFILE%\Documents\截图*" /b
    echo.
)

echo 检查下载文件夹:
if exist "%USERPROFILE%\Downloads\截图*" (
    echo 在下载文件夹找到:
    dir "%USERPROFILE%\Downloads\截图*" /b
    echo.
)

echo 检查图片文件夹:
if exist "%USERPROFILE%\Pictures\截图*" (
    echo 在图片文件夹找到:
    dir "%USERPROFILE%\Pictures\截图*" /b
    echo.
)

echo.
echo 如果没有找到，请尝试:
echo 1. 将截图文件复制到项目文件夹
echo 2. 或者告诉我完整的文件路径
echo.
pause