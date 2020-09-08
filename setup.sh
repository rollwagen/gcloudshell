
# Run upgrade...
sudo apt-get update; sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade;

sudo apt install -y rsync nmap azure-cli zsh

sudo apt autoremove -y

source ~/.bashrc
source ~/.bash_profile

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
source ~/.git-completion.bash

