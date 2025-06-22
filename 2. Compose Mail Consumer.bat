@echo off

cd NotificationSystem.Mail.Consumer.Service
echo NotificationSystem.Mail.Consumer.Service

choice /C FYC /M "Compose-Up Mail Consumer Service. Press F for FORCE, Y for YES or C for CANCEL"  

if %errorlevel% equ 1 docker-compose up -d --force-recreate --no-deps --build
if %errorlevel% equ 2 docker-compose up -d --no-deps --build

cd..
cd..

echo _____________________________________
echo Press any key to continue...
pause >nul