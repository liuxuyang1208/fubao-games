@echo off
echo 正在查找桌面路径和照片文件...
echo.

echo 当前用户桌面:
dir "%USERPROFILE%\Desktop" /b 2>nul
echo.

echo 公共桌面:
dir "C:\Users\Public\Desktop" /b 2>nul
echo.

echo 查找图片文件:
echo 正在搜索桌面上的图片文件...
echo.

for %%d in ("%USERPROFILE%\Desktop" "C:\Users\Public\Desktop") do (
    if exist "%%d" (
        echo 检查目录: %%d
        dir "%%d\*.jpg" "%%d\*.png" "%%d\*.gif" "%%d\*.bmp" "%%d\*.jpeg" /b 2>nul
        echo.
    )
)

echo 完成！
pause