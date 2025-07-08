#!/data/data/com.termux/files/usr/bin/bash

# Install necessary packages
pkg update -y && pkg upgrade -y
pkg install -y resolv-conf dnsutils curl

# Configure DNS (Google + Cloudflare)
echo -e 'nameserver 1.1.1.1\nnameserver 8.8.8.8' > $PREFIX/etc/resolv.conf

# Test DNS Resolution
echo "[*] Testing DNS resolution..."
nslookup backboard.railway.com || { echo "[-] DNS resolution failed."; exit 1; }

# Test HTTP connectivity
echo "[*] Testing HTTP request..."
curl -I https://backboard.railway.com/graphql/v2 || { echo "[-] HTTP request failed."; exit 1; }

# Reminder to login Railway CLI
echo "[*] DNS and connectivity look fine."
echo "[*] Now run: railway login --browserless"

