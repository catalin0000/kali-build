#!/bin/bash

mkdir /repo
chown kali:kali /repo
cp extras/run_pimpmykali.exp /repo/run_pimpmykali.exp
cd /repo
git clone https://github.com/Dewalt-arch/pimpmykali
chmod +x pimpmykali/pimpmykali.sh
chmod +x /repo/run_pimpmykali.exp
expect /repo/run_pimpmykali.exp

command='sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended'
sudo -u kali /bin/bash -c "$command"

curl -s https://ohmyposh.dev/install.sh | bash -s

cp -r /root/.cache/oh-my-posh /home/kali/.config/.

git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/kali/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/kali/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git /home/kali/.oh-my-zsh/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git /home/kali/.oh-my-zsh/plugins/zsh-autocomplete

file="/home/kali/.zshrc"
search_string='plugins=(git)'
new_line='plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)'
sed -i "s|$search_string|$new_line|" "$file"

command='oh-my-posh font install Hack'
sudo -u kali /bin/bash -c "$command"

command='oh-my-posh font install AnonymousPro'
sudo -u kali /bin/bash -c "$command"

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

file="/home/kali/.zshrc"
line='eval "$(oh-my-posh init zsh --config /home/kali/.config/oh-my-posh/themes/amro.omp.json)"'
echo "$line" >> "$file"

apt update
apt install -y zaproxy nuclei testssl.sh sublime-text kate feroxbuster wireguard mosh oscanner tnscmd10g wkhtmltopdf jq

mkdir /mnt/hgfs
file="/etc/fstab"
line="vmhgfs-fuse /mnt/hgfs fuse defaults,allow_other 0 0"
echo "$line" >> "$file"

command="pipx ensurepath"
sudo -u kali /bin/bash -c "$command"

git clone https://github.com/p0dalirius/Coercer
git clone https://github.com/topotam/PetitPotam
git clone https://github.com/AlmondOffSec/PassTheCert
git clone https://github.com/ShutdownRepo/pywhisker
git clone https://github.com/dirkjanm/krbrelayx
git clone https://github.com/CravateRouge/bloodyAD
git clone https://github.com/dirkjanm/PKINITtools
git clone https://github.com/sqshr/naptest
git clone https://github.com/Tib3rius/AutoRecon
git clone https://github.com/Ekultek/WhatWaf
git clone https://github.com/threat9/routersploit
git clone https://github.com/dionach/CMSmap
git clone https://github.com/codingo/NoSQLMap
git clone https://github.com/samratashok/nishang
git clone https://github.com/DanMcInerney/net-creds

sudo -u kali /bin/bash -c "qterminal &"
sleep 1
sudo -u kali /bin/bash -c "pkill qterminal"
sleep 1

file='/home/kali/.config/qterminal.org/qterminal.ini'
search_string='fontFamily='
new_line='fontFamily=Hack Nerd Font'
sed -i "s|^${search_string}.*|${new_line}|" "$file"

search_string='fontSize='
new_line='fontSize=12'
sed -i "s|^${search_string}.*|${new_line}|" "$file"

search_string='ApplicationTransparency='
new_line='ApplicationTransparency=0'
sed -i "s|^${search_string}.*|${new_line}|" "$file"

