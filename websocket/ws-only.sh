#!/bin/bash
# Proxy Websocket Cloudflare by Deuxly
# ==========================================

# Link Hosting anda
deuxlyvpn="raw.githubusercontent.com/deuxly/try/main/websocket"

# Getting Proxy Template
wget -q -O /usr/local/bin/ws-aja https://${deuxlyvpn}/websocket.py
chmod +x /usr/local/bin/ws-aja

# Installing Service
cat > /etc/systemd/system/ws-aja.service << END
[Unit]
Description=Python Proxy
Documentation=https://nekopi.care
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ws-aja 8880
Restart=on-failure
[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ws-aja
systemctl restart ws-aja
