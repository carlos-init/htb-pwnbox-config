#!/bin/bash
#This script is executed every time your instance is spawned.
cd

sudo apt update

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

cargo install rusthound-ce

cd 
mkdir tools
cd tools
mkdir chisel
cd chisel
wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_windows_amd64.gz
gunzip chisel_1.10.1_windows_amd64.gz
mv chisel_1.10.1_windows_amd64 chisel.exe
wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_linux_amd64.gz
gunzip chisel_1.10.1_linux_amd64.gz
mv chisel_1.10.1_linux_amd64 chisel
chmod +x chisel
cd
cd tools
mkdir peas
cd peas
wget https://github.com/peass-ng/PEASS-ng/releases/latest/download/linpeas.sh
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64.exe
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx86.exe
cd 
cd tools
mkdir printspoofer
cd printspoofer
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe
cd
cd tools
mkdir LaZagne
cd LaZagne
wget https://github.com/AlessandroZ/LaZagne/releases/latest/download/LaZagne.exe -O LaZagne.exe
cd
cd tools
mkdir kerbrute
cd kerbrute
go install github.com/ropnop/kerbrute@master
cp ~/go/bin/kerbrute .
cd
cd tools
git clone https://github.com/Flangvik/SharpCollection.git
mv SharpCollection sharpcollection
git clone https://github.com/urbanadventurer/username-anarchy.git
mkdir pwdump
cd pwdump
wget https://download.openwall.net/pub/projects/john/contrib/pwdump/pwdump8-8.2.zip
cd
cd tools
git clone https://github.com/urbanadventurer/username-anarchy.git
git clone https://github.com/kmahyyg/mremoteng-decrypt.git
git clone https://github.com/S3cur3Th1sSh1t/PowerSharpPack.git
mv PowerSharpPack powersharppack
git clone https://github.com/dirkjanm/PKINITtools
mv PKINITtools pkinittools
cd pkinittools
pip install impacket minikerberos

cd 
sudo apt install eyewitness ca-certificates gh rsyslog exiftool ntpdate tree gpp-decrypt pdfid wmi-client build-essential pkg-config libkrb5-dev libclang-dev -y
pip install bloodyad pywhisker

#configure tmux
cd
touch ~/.tmux.conf

echo "unbind r" > ~/.tmux.conf
echo "bind r source-file ~/.tmux.conf" >> ~/.tmux.conf
echo "" >> ~/.tmux.conf
echo "set -g prefix C-s" >> ~/.tmux.conf
echo "" >> ~/.tmux.conf
echo "# Navigate panes with Alt + arrow keys (no prefix)" >> ~/.tmux.conf
echo "bind -n M-Left select-pane -L" >> ~/.tmux.conf
echo "bind -n M-Right select-pane -R" >> ~/.tmux.conf
echo "bind -n M-Up select-pane -U" >> ~/.tmux.conf
echo "bind -n M-Down select-pane -D" >> ~/.tmux.conf

tmux source ~/.tmux.conf




# git clone https://github.com/nicocha30/ligolo-ng.git
