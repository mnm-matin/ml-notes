# First-setup dev environment

## Install Miniconda
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh
```

## transfer from command line [transfer.sh](https://transfer.sh)
```
nano ~/.bashrc
#add the following line
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}
```

## ssh-keys
[good tutorial from vs-code](https://code.visualstudio.com/docs/remote/troubleshooting)

### check if you have a public key already, usually at:
```bash
~/.ssh/id_ed25519.pub
OR
C:\Users\your-user\.ssh\id_ed25519.pub
```
if not then run
```bash
ssh-keygen -t rsa -b 4096
```
better to create a new key with
```
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519-remote-ssh
or for windows:
ssh-keygen -t ed25519 -f "$HOME\.ssh\id_ed25519-remote-ssh"
```
### copy over key to host

```bash
#linux to linux
export USER_AT_HOST="your-user-name-on-host@hostname"
export PUBKEYPATH="$HOME/.ssh/id_ed25519.pub"
ssh-copy-id -i "$PUBKEYPATH" "$USER_AT_HOST"

#windows to linux
$USER_AT_HOST="your-user-name-on-host@hostname"
$PUBKEYPATH="$HOME\.ssh\id_ed25519.pub"
$pubKey=(Get-Content "$PUBKEYPATH" | Out-String); ssh "$USER_AT_HOST" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo '${pubKey}' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
```

### edit ssh config
```
Host name-of-ssh-host-here
    User your-user-name-on-host
    HostName host-fqdn-or-ip-goes-here
    IdentityFile ~/.ssh/id_ed25519-remote-ssh
```   
for windows set path with double slash
```
IdentityFile C:\\path\\to\\my\\id_ed25519-remote-ssh
```


## wsl-behind vpn


## cuda set-up
