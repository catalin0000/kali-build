#!/bin/bash

mkdir /repo
cp extras/run_pimpmykali.exp /repo/run_pimpmykali.exp
cd /repo
git clone https://github.com/Dewalt-arch/pimpmykali
chmod +x pimpmykali/pimpmykali.sh
chmod +x /repo/run_pimpmykali.exp
bash /repo/run_pimpmykali.exp

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

curl -s https://ohmyposh.dev/install.sh | bash -s

cp -r /root/.cache/oh-my-posh /home/kali/.config/.

git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/kali/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/kali/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git /home/kali/.oh-my-zsh/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git /home/kali/.oh-my-zsh/plugins/zsh-autocomplete


