#!/bin/bash

# yay install
git clone https://aur.archlinux.org/yay.git ~/.config/yay
cd ~/.config/yay
makepkg -si --noconfirm
cd

# install programs
yay -S adobe-source-han-sans-cn-fonts --noconfirm
yay -S adobe-source-han-sans-jp-fonts  --noconfirm
yay -S adobe-source-han-sans-kr-fonts --noconfirm
yay -S atool --noconfirm
yay -S blueman --noconfirm
yay -S breeze --noconfirm
yay -S gdu --noconfirm
yay -S ncspot-bin --noconfirm 
yay -S ttf-font-awesome --noconfirm
yay -S ttf-jetbrains-mono-nerd --noconfirm
yay -S cronie --noconfirm
yay -S kitty --noconfirm
yay -S yazi-git --noconfirm
yay -S downgrade --noconfirm
yay -S swww --noconfirm
yay -S udiskie --noconfirm
yay -S hyprland --noconfirm
yay -S pyprland --noconfirm
yay -S lxqt-policykit --noconfirm
yay -S trash-cli --noconfirm
yay -S swaylock-effects-git --noconfirm
yay -S swaync --noconfirm
yay -S simple-mtpfs --noconfirm
yay -S brightnessctl --noconfirm
yay -S cantarell-fonts --noconfirm
yay -S xdg-desktop-portal-hyprland --noconfirm
yay -S xdg-desktop-portal-gtk --noconfirm
yay -S pulsemixer --noconfirm
yay -S calcurse --noconfirm
yay -S grimblast-git --noconfirm
yay -S waybar --noconfirm
yay -S tlp --noconfirm
yay -S aegisub --noconfirm
yay -S brave-bin --noconfirm
yay -S fzf --noconfirm
yay -S lynx --noconfirm
yay -S clamtk --noconfirm
yay -S cups --noconfirm
yay -S system-config-printer --noconfirm
yay -S gparted --noconfirm
yay -S gvfs --noconfirm
yay -S grub-customizer --noconfirm
yay -S ufw --noconfirm
yay -S htop --noconfirm
yay -S libreoffice-fresh --noconfirm
yay -S libreoffice-fresh-cs --noconfirm
yay -S man-db --noconfirm
yay -S mpv --noconfirm
yay -S mpv-mpris --noconfirm
yay -S nm-connection-editor --noconfirm
yay -S thunar --noconfirm
yay -S thunar-volman --noconfirm
yay -S thunar-archive-plugin --noconfirm
yay -S fastfetch --noconfirm
yay -S neovim --noconfirm
yay -S newsboat --noconfirm
yay -S ntfs-3g --noconfirm
yay -S python-pipx --noconfirm
yay -S qbittorrent --noconfirm
yay -S qimgv-git --noconfirm
yay -S qt5ct --noconfirm
yay -S qt5-wayland --noconfirm
yay -S qt6-wayland --noconfirm
yay -S qt6ct --boconfirm
yay -S reflector --noconfirm
yay -S subliminal --noconfirm
yay -S thunderbird --noconfirm
yay -S timeshift-bin --noconfirm
yay -S ttf-meslo-nerd --noconfirm
yay -S ttf-ms-win10-auto --noconfirm
yay -S ttf-roboto --noconfirm
yay -S noto-fonts-emoji --noconfirm
yay -S unrar --noconfirm
yay -S unzip --noconfirm
yay -S zip --noconfirm
yay -S veracrypt --noconfirm
yay -S ventoy-bin --noconfirm
yay -S webtorrent-cli --noconfirm
yay -S xidel --noconfirm
yay -S yt-dlp --noconfirm
yay -S wl-clipboard --noconfirm
yay -S wlogout --noconfirm
yay -S wlsunset --noconfirm
yay -S xdg-user-dirs --noconfirm
yay -S zathura-pdf-mupdf --noconfirm
yay -S zathura-cb --noconfirm
yay -S zsh --noconfirm
yay -S nwg-look-bin --noconfirm
yay -S wf-recorder --noconfirm
yay -S rofi-wayland --noconfirm
yay -S rofi-calc-git --noconfirm

# update file saving location
xdg-user-dirs-update

# enable services
sudo systemctl enable tlp 
sudo systemctl enable ufw 
sudo ufw enable 
sudo systemctl enable cronie 
sudo systemctl enable cups 
sudo updatedb 
sudo systemctl disable NetworkManager-wait-online.service 

# pipx install
pipx ensurepath 
pipx install ffsubsync 

# set default xdg
xdg-mime default libreoffice-writer.desktop application/vnd.openxmlformats-officedocument.wordprocessingml.document

xdg-mime default libreoffice-impress.desktop application/vnd.openxmlformats-officedocument.presentationml.presentation

# složky
sudo mkdir /mnt/Disk2 && sudo chown tom:tom /mnt/Disk2
sudo mkdir /mnt/android && sudo chown tom:tom /mnt/android

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# vim-plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

