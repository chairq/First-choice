pkg update && install nodejs
pkg update && pkg install nodejs
node -v
npm -v
npm install -g railway
railway login
npm unstall -g railway
npm uninstall -g railway
wget
pkg install wget
wget
https://github.com/railwayapp/cli/releases/latest/download/railwaylinux-arm64 -o railway
wget
https://github.com/railwayapp/cli/releases/latest/download/railway-linux-arm64 -o railway
wget
https://github.com/railwayapp/cli/releases/latest/download/railway-linux-arm64 -o railway
wget
https://github.com/railwayapp/cli/releases/latest/download/railway-linux-arm64-o railway
wget https://github.com/railwayapp/cli/releases/latest/download/railway-linux-arm64 -O railway
npm install -g railway
pkg install rust
git clone https://github.com/railwayapp/cli.git
cd cli
cargo build --release
ls
cd railway
file railway
pkg install file
file railway
wget https://github.com/railwayapp/cli/releases/download/v4.5.4/railway-v4.5.4-aarch64-unknown-linux-musl.tar.gz -O railway.tar.gz
tar -xzf railway.tar.gz
ls
chmod +x railway
mv railway ~/../usr/bin/
railway --version
railway login
ping google.com
export RAILWAY-TOKEN=7ad447b1-7fd1-433a-8c29-ef0eb38c37df
export RAILWAY_TOKEN=7ad447b1-7fd1-433a-8c29-ef0eb38c37df
railway whoami
echo 'export RAILWAY_TOKEN=7ad447b1-7fd1-433a-8c29-ef0eb38c37df' >> ~/.bashrc
source ~/.bashrc
pkg install resolv-conf
echo 'nameserver 8.8.8.8' > ~/../usr/etc/resolv.conf
railway whoami
ping backboard.railway.com
railway whoami
curl -v https://backboard.railway.com/graphql/v2
railway login
railway whoami
echo 'nameserver 8.8.8.8' > $PREFIX/etc/resolv.conf
ping railway.app
echo 'nameserver 8.8.8.8' > $PREFIX/etc/resolv.conf
ping railway.app
railway login
railway login --browserless
echo "nameserver 8.8.8.8" > ~/../usr/etc/resolv.conf
railway login --browserless
nslookup backboard.railway.com
pkg install dnsutils
nslookup backboard.railway.com
curl -I https://backboard.railway.com/graphql/v2
railway login --browserless
RAILWAY_TOKEN=your_token_here railway whoami
echo 'export RAILWAY_TOKEN=7ad447b1-7fd1-433a-8c29-ef0eb38c37df' >> ~/.bashrc
source ~/.bashrc
railway whoami
echo 'export RAILWAY_TOKEN=7ad447b1-7fd1-433a-8c29-ef0eb38c37df' >> ~/.bashrc && source ~/.bashrc
railway whoami --browserless
railway login --browserless
echo 'nameserver 8.8.8.8' > ~/../usr/etc/resolv.conf
railway whoami
# 1. Fix DNS (Force Google DNS)
echo 'nameserver 8.8.8.8' > ~/../usr/etc/resolv.conf
# 2. Export Railway Token (replace YOUR_TOKEN_HERE with your token)
export RAILWAY_TOKEN=YOUR_TOKEN_HERE
# 3. Save token permanently to ~/.bashrc
echo 'export RAILWAY_TOKEN=YOUR_TOKEN_HERE' >> ~/.bashrc
# 4. Reload ~/.bashrc to load token
source ~/.bashrc
# 5. Try Browserless Login (safer for Termux)
railway login --browserless
# 6. Check Login Status
railway whoami
railway login --browserless
pkg install resolv-conf -y && echo 'nameserver 8.8.8.8' > $PREFIX/etc/resolv.conf
railway login --browserless
ping 8.8.8.8
[200~echo -e 'nameserver 1.1.1.1\nnameserver 8.8.8.8' > $PREFIX/etc/resolv.conf~
echo -e 'nameserver 1.1.1.1\nnameserver 8.8.8.8' > $PREFIX/etc/resolv.conf
nslookup railway.app
railway login --browserless
pkg install resolv-conf -y
echo -e 'nameserver 1.1.1.1\nnameserver 8.8.8.8' > $PREFIX/etc/resolv.conf
nslookup railway.app
railway login --browserless
pkg install resolv-conf dnsutils -y
echo -e 'nameserver 1.1.1.1\nnameserver 8.8.8.8' > $PREFIX/etc/resolv.conf
echo "Testing DNS Resolution..."
nslookup railway.app
echo -e "\nIf DNS resolution works above, now you can run:"
echo "railway login --browserless"
railway login --browserless
termux-resetup-settings
cat > fix_dns_and_railway.sh << 'EOF'
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
curl -I