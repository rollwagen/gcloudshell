
# Run upgrade...
sudo apt-get update; sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade;

sudo apt install -y rsync nmap awscli zsh fzf

sudo apt autoremove -y

source ~/.bashrc
source ~/.bash_profile

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
source ~/.git-completion.bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# YELLOW="\[$(tput setaf 3)\]"
# RESET="\[$(tput sgr0)\]"
# PS1="\h:\W \u\$(__git_ps1 \" ${YELLOW}(%s)${RESET} \")\$ "

