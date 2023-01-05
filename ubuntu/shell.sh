sudo apt install zsh -y

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# fonts
sudo apt install fonts-firacode -y
sudo apt install fonts-powerline -y

# autofill
# TODO: make this work when installinf zsh for the first time
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# TODO: find and replace the plugin section in .zshrc or overwrite using a default
echo """
Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

plugins=( 
    # other plugins...
    zsh-autosuggestions
)
"""