
# Run upgrade...
sudo apt-get update
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade;

sudo apt install -y jq rsync nmap zsh fzf zsh-syntax-highlighting neovim mosh netcat
sudo apt autoremove -y

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip -d /tmp/ /tmp/awscliv2.zip
sudo /tmp/aws/install
rm -rf /tmp/aws*

source ~/.bashrc
source ~/.bash_profile

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
source ~/.git-completion.bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# lsd and bat
curl -OL https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb
sudo dpkg -i lsd_0.20.1_amd64.deb
curl -OL https://github.com/sharkdp/bat/releases/download/v0.18.3/bat_0.18.3_amd64.deb
sudo dpkg -i bat_0.18.3_amd64.deb
rm *.deb

# git - deltab
curl https://sh.rustup.rs -sSf | sh -s -- -y
~/.cargo/bin/cargo install git-delta

# YELLOW="\[$(tput setaf 3)\]"
# RESET="\[$(tput sgr0)\]"
# PS1="\h:\W \u\$(__git_ps1 \" ${YELLOW}(%s)${RESET} \")\$ "

alias zsh=/bin/zsh
alias ls=lsd
alias cat=bat
alias vi=nvim

# for mosh
sudo apt-get install -y locales
sudo locale-gen "en_US.UTF-8"
sudo update-locale LC_ALL="en_US.UTF-8"
