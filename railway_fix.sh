#!/bin/bash

# Force Railway CLI to use IP & skip SSL verification (for testing only!)
export NODE_TLS_REJECT_UNAUTHORIZED=0
export RAILWAY_API_BASE="https://104.18.25.53/graphql/v2"

echo "[*] Running Railway CLI login (browserless mode)..."
railway login --browserless

echo ""
echo "[!] WARNING: This bypasses SSL checks and forces IP-based access."
echo "    Only use this temporarily for testing purposes!"
