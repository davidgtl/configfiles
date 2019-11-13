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
/usr/share/gnome-shell/theme/ubuntu.css
https://int3ractive.com/2018/09/make-the-best-of-MacBook-touchpad-on-Ubuntu.html
sudo apt install pulseaudio pulseaudio-utils pavucontrol pulseaudio-module-bluetooth
pacmd list-cards
pacmd set-card-profile 2 off
bluetoothctl
disconnect 50:C9:71:97:A1:86
connect 50:C9:71:97:A1:86
pacmd set-card-profile 2 a2dp_sink
sudo apt-get --purge --reinstall install bluetooth bluez blueman pulseaudio pulseaudio-module-bluetooth
/var/lib/gdm/.config/pulse/client.conf
autospawn = no
daemon-binary = /bin/true
sudo -ugdm mkdir -p /var/lib/gdm3/.config/systemd/user
sudo -ugdm ln -s /dev/null /var/lib/gdm3/.config/systemd/user/pulseaudio.socket
pacmd set-card-profile bluez_card.CC_98_8B_1C_17_9D a2dp_sink
