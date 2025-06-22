@echo off

echo 1. Remove ALL Containers
echo _____________________________________

for /F %%i in ('docker ps -a -q') do docker container rm -f %%i

echo 2. Clean (system prune)
echo _____________________________________
docker system prune

echo _____________________________________
echo Press any key to continue...
pause >nul