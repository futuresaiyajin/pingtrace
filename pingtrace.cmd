@echo off

set /p NETWORK_ADDRESS=Please enter network adress: 
set OUTPUT_DIR=%userprofile%\Downloads

for %%a in ("ping" "tracert") do powershell "%%a %NETWORK_ADDRESS% | tee %OUTPUT_DIR%\\%%a_%NETWORK_ADDRESS%.txt"