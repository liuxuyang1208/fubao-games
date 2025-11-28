@echo off
echo 正在查找"截图.png"文件...
echo.

echo 检查用户桌面:
if exist "%USERPROFILE%\Desktop\截图.png" (
    echo ✅ 找到: %USERPROFILE%\Desktop\截图.png
    copy "%USERPROFILE%\Desktop\截图.png" "d:\Program Files\Python\FubaoGameSite\screenshot.png"
    echo 已复制到项目文件夹
    goto :found
)

echo 检查公共桌面:
if exist "C:\Users\Public\Desktop\截图.png" (
    echo ✅ 找到: C:\Users\Public\Desktop\截图.png
    copy "C:\Users\Public\Desktop\截图.png" "d:\Program Files\Python\FubaoGameSite\screenshot.png"
    echo 已复制到项目文件夹
    goto :found
)

echo 检查用户文档:
if exist "%USERPROFILE%\Documents\截图.png" (
    echo ✅ 找到: %USERPROFILE%\Documents\截图.png
    copy "%USERPROFILE%\Documents\截图.png" "d:\Program Files\Python\FubaoGameSite\screenshot.png"
    echo 已复制到项目文件夹
    goto :found
)

echo 检查下载文件夹:
if exist "%USERPROFILE%\Downloads\截图.png" (
    echo ✅ 找到: %USERPROFILE%\Downloads\截图.png
    copy "%USERPROFILE%\Downloads\截图.png" "d:\Program Files\Python\FubaoGameSite\screenshot.png"
    echo 已复制到项目文件夹
    goto :found
)

echo 检查图片文件夹:
if exist "%USERPROFILE%\Pictures\截图.png" (
    echo ✅ 找到: %USERPROFILE%\Pictures\截图.png
    copy "%USERPROFILE%\Pictures\截图.png" "d:\Program Files\Python\FubaoGameSite\screenshot.png"
    echo 已复制到项目文件夹
    goto :found
)

echo ❌ 没有找到"截图.png"文件
echo.
echo 请尝试:
echo 1. 手动将截图.png复制到项目文件夹
echo 2. 或者告诉我截图.png的完整路径
echo.
pause
exit

:found
echo.
echo ✅ 成功！截图已复制到项目文件夹
echo 现在我可以查看截图内容了
pause