@echo off
cd "C:\Program Files\Mozilla Firefox"
echo running...
for /F "tokens=*" %%x in (C:\Users\curti\Desktop\websites.txt) DO (
start "" firefox -url %%x
timeout /T 7
start "" firefox about:preferences#privacy 
timeout /T 10
taskkill /T /IM firefox.exe
timeout /T 5
)