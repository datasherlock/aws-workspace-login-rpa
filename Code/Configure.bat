@echo off
setlocal enabledelayedexpansion
echo "You are either running the bot for the first time or you recently reset your credentials"
set /p user="Enter User Name:"
set /p pin="Enter CodAuth Pin:"
set /p pwd="Enter Password:"

echo User-%user%> Creds.txt
echo CodPin-%pin%>> Creds.txt
echo Password-%pwd%>> Creds.txt