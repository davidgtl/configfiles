#/user/bin/env bash

#nvidia drivers
#https://askubuntu.com/questions/760934/graphics-issues-after-while-installing-ubuntu-16-04-16-10-with-nvidia-graphics
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall

sudo apt install -y git neovim zsh dconf-editor

#zsh goodies
cd $HOME
git clone git@github.com:davidgtl/configfiles.git
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp configfiles/.zshrc ./
cp -r configfiles/.oh-my-zsh ./.oh-my-zsh
#sudo chsh --shell $(which zsh) $(whoami)
mkdir .oh-my-zsh/custom/plugins/deer 
wget -o .oh-my-zsh/custom/plugins/deer/deer https://raw.githubusercontent.com/Vifon/deer/master/deer 

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#vim goodies
#sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp configfiles/.vimrc ./  
vim +PluginInstall +qall

#gnome
sudo apt install -y gnome-tweaks gnome-session
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
/usr/share/gnome-shell/theme/ubuntu.css

#sudo apt-get build-dep xserver-xorg-input-mtrack
#https://howchoo.com/g/mdy0ngziogm/the-perfect-almost-touchpad-settings-on-linux-2
#https://bill.harding.blog/2017/12/27/toward-a-linux-touchpad-as-smooth-as-macbook-pro/

#Deep smooth sleep
#echo deep > /sys/power/mem_sleep
#echo GRUB_CMDLINE_LINUX_DEFAULT="quiet splash mem_sleep_default=deep init=/sbin/e4rat-preload" >> /etc/default/grub

#https://askubuntu.com/questions/12383/how-to-go-automatically-from-suspend-into-hibernate
#e4rat
#https://itsfoss.com/upgrade-linux-kernel-ubuntu/
#sudo systemctl disable NetworkManager-wait-online.service 
#dconf /org/gnome/gnome-session/auto-save-session
#https://askubuntu.com/questions/927854/how-do-i-increase-the-size-of-swapfile-without-removing-it-in-the-terminal
#https://int3ractive.com/2018/09/make-the-best-of-MacBook-touchpad-on-Ubuntu.html

#Bluez A2DP sink
sudo add-apt-repository ppa:bluetooth/bluez
sudo apt install -y bluetooth bluez pulseaudio pulseaudio-utils pavucontrol pulseaudio-module-bluetooth
sudo ln -s /usr/local/bin $(pwd)/btsink
sudo cp ./btsink.service /etc/systemd/system/btsink.service
sudo systemctl enable btsink.service
sudo systemctl start btsink.service















rm /usr/share/gnome-shell/theme/ubuntu.css
cp .config/macbuntu/ubuntu.css /usr/share/gnome-shell/theme/
