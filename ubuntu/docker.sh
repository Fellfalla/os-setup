# Install docker
snap install docker

# Make docker executable without super privileges
sudo groupadd docker # 1. create `docker` group (if not already created)
sudo usermod -aG docker $USER # 2. add user to `docker` group
newgrp docker # 3. log out and log back in, or reboot. Verify by running `docker run hello-world`


# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose # Download the docker-compose software
sudo chmod +x /usr/local/bin/docker-compose # Make it executable
sudo apt remove docker-compose # Make sure you have uninstalley previous versions of docker-compos
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose # Link the binary to the default bin path