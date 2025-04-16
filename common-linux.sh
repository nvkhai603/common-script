#!/bin/bash
# Đây là file chứa các script chung cho tất cả các máy chủ

# Cài đặt các gói cần thiết
sudo apt-get update
sudo apt-get install htop
sudo apt-get install -y xclip

# Cài đặt clouldflare
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared any main' | sudo tee /etc/apt/sources.list.d/cloudflared.list
sudo apt-get update && sudo apt-get install cloudflared
