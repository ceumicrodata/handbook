set -ex

# git
sudo apt-get install git

# chromium
sudo apt-get install chromium-browser

# VPN
sudo apt-get install openconnect

# htop
sudo apt-get install htop

# sshfs
sudo apt-get install sshfs

# tree
sudo apt-get install tree

# pip3
sudo apt-get install python3-pip

# jupyter
sudo apt-get install jupyter-notebook

# zoom
(
  mkdir /tmp/zoom
  cd /tmp/zoom
  wget https://zoom.us/client/latest/zoom_amd64.deb
  sudo dpkg -i zoom_amd64.deb
  # rm zoom_amd64.deb
  sudo apt-get install -f
)

# bead
(
  mkdir -p ~/.local/bin
  cd ~/.local/bin
  wget https://github.com/e3krisztian/bead/releases/download/v0.8.1/bead
  chmod +x bead
)
