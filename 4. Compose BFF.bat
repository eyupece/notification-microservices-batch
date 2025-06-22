@echo off

cd Notification.Bff
echo Notification.Bff

choice /C FYC /M "Compose-Up Notification-BFF. Press N for NO, Y for YES or F for FORCE"  

if %errorlevel% equ 1 docker-compose up -d --force-recreate --no-deps --build
if %errorlevel% equ 2 docker-compose up -d --no-deps --build

cd..
cd..

echo _____________________________________
echo Press any key to continue...
pause >nul