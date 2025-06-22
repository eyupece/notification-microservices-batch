# 🚀 Notification Microservices Batch Automation

Kafka tabanlı notification mikroservis sistemini **tek tıkla yönetmek** için tasarlanmış batch script'leri.

## 📦 Ne İşe Yarar?

Bu batch dosyaları ile Docker Compose mikroservislerinizi kolayca:
- ✅ **Otomatik sırayla başlatın** (`build.ps1`)
- ✅ **Tek tek yönetin** (Kafka → Producer → Consumer → BFF)
- ✅ **Temizlik yapın** (hafif/tam temizlik)
- ✅ **Force recreate** veya normal mod seçin

## 🎯 Hızlı Kullanım

```powershell
# Tüm sistemi otomatik başlat
.\build.ps1

# Manuel sıralı başlatma
.\1. Compose Kafka.bat         # İlk: Kafka
.\3. Compose Producer.bat      # Producer
.\2. Compose Mail Consumer.bat # Mail Consumer
.\2. Compose Sms Consumer.bat  # SMS Consumer  
.\4. Compose BFF.bat          # Son: BFF/Gateway
```

## 🗂️ Dosyalar

| Script | İşlevi |
|--------|--------|
| `build.ps1` | 🤖 Tüm servisleri otomatik sırayla başlatır |
| `1. Compose Kafka.bat` | ☕ Kafka message broker |
| `2. Compose Mail Consumer.bat` | 📧 Email consumer |
| `2. Compose Sms Consumer.bat` | 📱 SMS consumer |
| `3. Compose Producer.bat` | 📤 Notification producer |
| `4. Compose BFF.bat` | 🌐 API Gateway/BFF |
| `0. Only Sys Prune.bat` | 🧹 Hafif Docker temizlik |
| `0. Remove All.bat` | 🗑️ Tüm container'ları sil |

## 📚 Detaylı Kılavuz

Bu batch script'lerin **nasıl çalıştığı**, **mikroservis mimarisi** ve **Docker Compose detayları** için Medium makalemizi okuyun:

**👉 [Medium: "Batch Script'lerle Docker Mikroservis Yönetimi"](https://medium.com/p/0a1acc3b30ce)**

---
