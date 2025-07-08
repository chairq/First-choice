#!/bin/bash

# Fix Ngrok DNS issue in Termux
echo "⚙️ Setting DNS to Google (8.8.8.8)..."
mkdir -p $PREFIX/etc
echo "nameserver 8.8.8.8" > $PREFIX/etc/resolv.conf

# Confirm DNS was set
echo "✅ DNS Set Successfully:"
cat $PREFIX/etc/resolv.conf

# Test Internet Connection
echo "🌐 Testing connection..."
ping -c 2 google.com

# Run Ngrok (edit your port here if different)
echo "🚀 Starting Ngrok on port 3000..."
ngrok http 3000
