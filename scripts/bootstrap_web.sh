#!/bin/bash

set -euo pipefail
# -e : exit immediately if a command faims
# -u : treat unset variables as errors
# -o : retrun the first non zero exit code, normaly it returns the last one (in this example: "cmd1 | cmd2 | cmd3", it returns the the exit code of the last command)

USER_NAME="webuser"

if ! id -u "$USER_NAME" > /dev/null 2>&1; then
	sudo useradd -m "$USER_NAME"
else
	echo "User already exists"
fi

sudo amazon-linux-extras install -y nginx1

echo "<h1>Welcome to DevOps Expert Bootcamp</h1>" | sudo tee /usr/share/nginx/html/index.html > /dev/null

sudo systemctl enable nginx
sudo systemctl restart nginx

echo "Done. Visit IP address of your server"
