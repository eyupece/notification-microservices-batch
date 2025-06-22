@echo off

cd NotificationSystem.Mail.Consumer.Service/Kafka
echo NotificationSystem.Mail.Consumer.Service/Kafka

choice /C FYC /M "Compose-Up Kafka Message Broker. Press F for FORCE, Y for YES or C for CANCEL"  

if %errorlevel% equ 1 docker-compose up -d --force-recreate --no-deps --build
if %errorlevel% equ 2 docker-compose up -d --no-deps --build

cd..
cd..

echo _____________________________________
echo Press any key to continue...
pause >nul