!/bin/bash

sudo pacman -S -q firefox vim discord konsole zsh yay

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh /bin/zsh

mv ~/Salty/.zshrc ~
mv ~/Salty/salty.zsh-theme ~/.oh-my-zsh/themes
[-d "~/.config/i3" ] && mv config ~/.config/i3 || echo "directory not found... skipping.
