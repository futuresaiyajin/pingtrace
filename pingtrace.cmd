@echo off

set /p ADDRESS=Enter pingable adress: 
set OUTPUT_DIR=%userprofile%\Downloads

for %%a in ("ping" "tracert") do powershell "%%a %ADDRESS% | tee %OUTPUT_DIR%\\%%a_%ADDRESS%.txt"