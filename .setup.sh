#/user/bin/env bash
#nvidia drivers
#https://askubuntu.com/questions/760934/graphics-issues-after-while-installing-ubuntu-16-04-16-10-with-nvidia-graphics
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo ubuntu-drivers autoinstall

#zsh goodies
sudo apt install zsh
cd $HOME
git init
git remote add origin https://github.com/davidgtl/configfiles.git
git fetch --all
git reset --hard
cd .oh-my-zsh
git init
git remote add origin https://github.com/robbyrussell/oh-my-zsh.git
git pull

source $HOME/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#vim goodies
sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#gnome
sudo apt update && sudo apt install gnome-session
sudo apt install gnome-tweaks
sudo apt-get install blueman
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:'

sudo apt-get build-dep xserver-xorg-input-mtrack
https://howchoo.com/g/mdy0ngziogm/the-perfect-almost-touchpad-settings-on-linux-2
https://bill.harding.blog/2017/12/27/toward-a-linux-touchpad-as-smooth-as-macbook-pro/
 echo deep > /sys/power/mem_sleep
https://askubuntu.com/questions/12383/how-to-go-automatically-from-suspend-into-hibernate
e4rat
https://itsfoss.com/upgrade-linux-kernel-ubuntu/
sudo systemctl disable NetworkManager-wait-online.service 
dconf /org/gnome/gnome-session/auto-save-session
https://askubuntu.com/questions/927854/how-do-i-increase-the-size-of-swapfile-without-removing-it-in-the-terminal
