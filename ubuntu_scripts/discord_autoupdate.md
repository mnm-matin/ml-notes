chmod +x /home/matin/Projects/ml-notes/ubuntu_scripts/discord_manager.sh

sudo sed -i 's|Exec=.*|Exec=/home/matin/Projects/ml-notes/ubuntu_scripts/discord_manager.sh|' /usr/share/applications/discord.desktop


echo "matin ALL=(ALL) NOPASSWD: /home/matin/Projects/ml-notes/ubuntu_scripts/discord_manager.sh --update-only" | sudo tee /etc/sudoers.d/discord_update

