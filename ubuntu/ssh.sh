ssh-keygen -t ed25519 -C $(hostname)

echo Please insert follow public key on github.com, gitlab.com, etc.:
echo $(cat ~/.ssh/id_ed25519.pub)