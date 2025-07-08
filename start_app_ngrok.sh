#!/bin/bash

# Start your app (replace this with your app's start command)
echo "Starting your app..."
node server.js &   # 👈 Replace 'server.js' with your actual app file if different

# Wait a bit to make sure app starts
sleep 5

# Start Ngrok (replace 3000 with your app port)
echo "Starting Ngrok..."
ngrok http 3000
