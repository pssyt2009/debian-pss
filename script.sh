sudo apt update && sudo apt upgrade -y
sudo apt install wget git ssh libx11-dev libxinerama-dev libxft-dev build-essential curl vim picom lxpolkit i3 dunst dmenu pandoc gh zsh -y
cd ~
git clone https://gitlab.com/dwt1/dmenu-distrotube
cd dmenu-distrotube
sudo make install && rm config.h
cd ~
rm -rf dmenu-distrotube
git clone https://gitlab.com/dwt1/dmscripts
cd dmscripts
sudo make clean build
sudo make install
cd ~
rm -rf dmscripts
mkdir github
cd github
git clone https://github.com/pssyt2009/neovim
cd neovim
./debian.sh  
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
cd ~
mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
unzip FiraCode.zip
rm FiraCode.zip
fc-cache -vf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



