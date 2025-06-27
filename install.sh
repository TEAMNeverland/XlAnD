#!/bin/bash
set -e

echo "🚀 جاري تنصيب متطلبات سورس XlAnD..."

sudo apt update && sudo apt upgrade -y
sudo apt install -y lua5.3 lua5.4 git curl screen unzip

echo "📦 فك ضغط مكتبة luatele..."
unzip -o luatele.zip

echo "✅ تم تجهيز السورس، جاري تشغيل البوت..."
chmod +x XlAnD
screen -dmS xland ./XlAnD
