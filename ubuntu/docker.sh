##### Install Docker #####
# remove old docker installations
sudo apt-get remove -y docker docker-engine docker.io containerd runc

# install dependencies
sudo apt-get update && sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# setup source
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io


##### Install Install docker-compose #####
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose # Download the docker-compose software
sudo chmod +x /usr/local/bin/docker-compose # Make it executable
sudo apt remove docker-compose # Make sure you have uninstalley previous versions of docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose # Link the binary to the default bin path


##### Make docker executable without super privileges #####
# TODO: continue script if docker group already exists
sudo groupadd docker # 1. create `docker` group (if not already created)
sudo usermod -aG docker $USER # 2. add user to `docker` group
newgrp docker # 3. log out and log back in, or reboot. Verify by running `docker run hello-world`

