sudo apt install zsh -y

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# fonts
sudo apt install fonts-firacode -y

# autofill
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo """
Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

plugins=( 
    # other plugins...
    zsh-autosuggestions
)
"""