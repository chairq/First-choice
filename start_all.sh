#!/bin/bash

# ✅ Function for timestamp logging
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# ✅ Fix DNS
log "🔧 Fixing DNS for Termux (8.8.8.8)..."
export RES_OPTIONS="nameserver 8.8.8.8"

# ✅ Check ISP Info
log "🌐 Checking ISP info..."
curl -s ipinfo.io

# ✅ Stop any existing Tor instance
log "🛑 Stopping any running Tor..."
pkill tor 2>/dev/null

# ✅ Fix torrc Config
TORRC_PATH="$PREFIX/etc/tor/torrc"
echo "SOCKSPort 9050" > "$TORRC_PATH"
echo "Log notice stdout" >> "$TORRC_PATH"
log "✅ torrc config fixed."

# ✅ Start Tor (in Background)
log "🚀 Starting Tor..."
tor > tor_log.txt 2>&1 &
TOR_PID=$!
sleep 5  # Wait for Tor to initialize

# ✅ Start Node.js App
log "🚀 Starting Node.js App..."
npm start &
NODE_PID=$!
sleep 2  # Wait for app to start

# ✅ Start Ngrok
APP_PORT=3000  # Change here if needed
log "🚀 Starting Ngrok on port $APP_PORT..."
ngrok http $APP_PORT

# ✅ Clean up on exit
trap 'kill $TOR_PID $NODE_PID 2>/dev/null; log "🛑 All background services stopped."' EXIT
trap 'kill $TOR_PID $NODE_PID 2>/dev/null; log "🛑 All background services stopped."' EXIT
