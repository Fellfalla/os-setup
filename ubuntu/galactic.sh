# Source: https://docs.ros.org/en/galactic/Installation/Ubuntu-Install-Debians.html

# First ensure that the Ubuntu Universe repository is enabled.
sudo apt install software-properties-common
sudo add-apt-repository universe

# Now add the ROS 2 GPG key with apt.
sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg


# Then add the repository to your sources list.
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null


# Update your apt repository caches after setting up the repositories.
sudo apt update

# ROS 2 packages are built on frequently updated Ubuntu systems. It is always recommended that you ensure your system is up to date before installing new packages.
sudo apt upgrade -y

# Desktop Install (Recommended): ROS, RViz, demos, tutorials.
sudo apt install ros-galactic-desktop -y

# Development tools: Compilers and other tools to build ROS packages
sudo apt install ros-dev-tools -y

# Install rosdep
sudo apt install python3-rosdep
sudo rosdep init