###### Initialization #####
sudo apt update && sudo apt upgrade -y


##### Software Development #####
# Utilities
sudo apt install curl -y
sudo apt install htop  -y

# Coding
sudo apt install git -y
sudo apt install npm -y
sudo apt install python3-pip -y

sudo snap install code --classic # IDEs for coding
# Install all vscode extensions
declare -a VSCODE_EXTENSIONS=(
    "ms-vscode.cpptools"
    "ms-python.python"
    "mhutchie.git-graph"
    "eamodio.gitlens"
    "2gua.rainbow-brackets"
    "ms-azuretools.vscode-docker"
    "vscode-icons-team.vscode-icons"
    "hbenl.vscode-test-explorer"
    "LittleFoxTeam.vscode-python-test-adapter"
    "matepek.vscode-catch2-test-adapter"
    "xaver.clang-format"
)

for extension in "${VSCODE_EXTENSIONS[@]}"; do
    code --install-extension $extension
done

git config --global core.editor "code --wait"

# Command Line Tools
sudo apt install terminator -y

##### Productive Tools #####
# TODO: install firefox addons https://askubuntu.com/questions/73474/how-to-install-firefox-addon-from-command-line-in-scripts
sudo snap install notion-snap
sudo snap install teams-for-linux


##### Security #####
sudo snap install bitwarden # Password manager


##### Fun Corner #####
sudo apt install steam -y
sudo snap install spotify
