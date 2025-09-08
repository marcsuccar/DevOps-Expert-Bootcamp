#!/usr/bin/env bash
set -euo pipefail
USER_NAME="webuser"

if ! id -u "$USER_NAME" >/dev/null 2>&1; then
  sudo useradd -m "$USER_NAME"
fi

sudo apt-get update -y
sudo apt-get install -y nginx

echo "<h1>Welcome to DevOps Bootcamp</h1>" | sudo tee /var/www/html/index.html >/dev/null
sudo systemctl enable nginx
sudo systemctl restart nginx
echo "Done. Visit http://localhost or your VM IP."
