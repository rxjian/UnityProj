@echo off
:loop
for /f "delims=" %%a in ('dir /ad /b') do (
pushd %%a
call :loop
popd
rmdir %%a 
)