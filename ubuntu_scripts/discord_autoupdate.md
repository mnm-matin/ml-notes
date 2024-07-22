make the script executable
```bash

chmod +x /home/matin/Projects/ml-notes/ubuntu_scripts/discord_manager.sh

```


change the discord.desktop file to point to the script
```bash

sudo sed -i 's|Exec=.*|Exec=/home/matin/Projects/ml-notes/ubuntu_scripts/discord_manager.sh|' /usr/share/applications/discord.desktop

```

(optional) add the following line to sudoers file
```bash
echo "matin ALL=(ALL) NOPASSWD: /home/matin/Projects/ml-notes/ubuntu_scripts/discord_manager.sh --update-only" | sudo tee /etc/sudoers.d/discord_update

