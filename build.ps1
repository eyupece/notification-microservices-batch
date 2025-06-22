docker container rm -f $(docker ps -a -q)

cd NotificationSystem.Mail.Consumer.Service\Kafka
Write-Output "NotificationSystem.Mail.Consumer.Service\Kafka"
docker-compose up -d --build

cd ..
Write-Output "NotificationSystem.Mail.Consumer.Service"
docker-compose up -d --build

cd ..
Write-Output "Notification System"

cd NotificationSystem.Sms.Consumer.Service
Write-Output "NotificationSystem.Sms.Consumer.Service"
docker-compose up -d --build

cd ..
Write-Output "Notification System"

cd NotificationSystem.Producer.Service
Write-Output "NotificationSystem.Producer.Service"
docker-compose up -d --build

cd ..
Write-Output "Notification System"

cd NotificationSystem.Gateway
Write-Output "NotificationSystem.Gateway"
docker-compose up -d --build

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');