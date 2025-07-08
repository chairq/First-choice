#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Updating Termux & installing required packages..."
pkg update -y && pkg upgrade -y
pkg install -y wireproxy resolv-conf curl

echo "[*] Setting up Wireproxy DNS tunnel..."
mkdir -p ~/.config/wireproxy
cat > ~/.config/wireproxy/config.conf << EOF
[Interface]
PrivateKey = 0000000000000000000000000000000000000000000
Address = 172.16.0.2/32
DNS = 1.1.1.1, 8.8.8.8

[Peer]
PublicKey = 1111111111111111111111111111111111111111111
AllowedIPs = 0.0.0.0/0
Endpoint = 162.159.193.10:2408
EOF

echo "[*] Launching Wireproxy in background..."
nohup wireproxy -c ~/.config/wireproxy/config.conf > /dev/null 2>&1 &

echo "[*] DNS tunnel is active
