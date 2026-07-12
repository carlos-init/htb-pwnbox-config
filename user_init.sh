#!/bin/bash
#This script is executed every time your instance is spawned.
cd
sudo apt update
cd /opt
sudo mkdir chisel
cd chisel
sudo wget https://github.com/jpillora/chisel/releases/download/v1.11.5/chisel_1.11.5_windows_amd64.zip
sudo gunzip chisel_1.11.5_windows_amd64.zip
sudo mv chisel_1.10.1_windows_amd64 chisel.exe
sudo wget https://github.com/jpillora/chisel/releases/download/v1.11.5/chisel_1.11.5_linux_amd64.gz
sudo gunzip chisel_1.11.5_linux_amd64.gz
sudo mv chisel_1.10.1_linux_amd64 chisel
sudo chmod +x chisel
cd /opt
sudo mkdir ligolo
cd ligolo
sudo mkdir windows
cd windows
sudo wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.3/ligolo-ng_agent_0.8.3_windows_amd64.zip
sudo wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.3/ligolo-ng_proxy_0.8.3_windows_amd64.zip
cd ..
sudo mkdir linux
cd linux
sudo wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.3/ligolo-ng_proxy_0.8.3_linux_amd64.tar.gz
sudo wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.3/ligolo-ng_agent_0.8.3_linux_amd64.tar.gz
cd /opt
sudo mkdir peass
cd peass
sudo wget https://github.com/peass-ng/PEASS-ng/releases/latest/download/linpeas.sh
sudo wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64.exe
sudo wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx86.exe
cd /opt
sudo mkdir printspoofer
cd printspoofer
sudo wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe
cd /opt
sudo mkdir LaZagne
cd LaZagne
sudo wget https://github.com/AlessandroZ/LaZagne/releases/latest/download/LaZagne.exe -O LaZagne.exe
cd /opt
sudo mkdir kerbrute
cd kerbrute
sudo go install github.com/ropnop/kerbrute@master
sudo cp ~/go/bin/kerbrute .
cd /opt
sudo git clone https://github.com/Flangvik/SharpCollection.git
sudo mv SharpCollection sharpcollection
sudo git clone https://github.com/urbanadventurer/username-anarchy.git
sudo mkdir pwdump
cd pwdump
sudo wget https://download.openwall.net/pub/projects/john/contrib/pwdump/pwdump8-8.2.zip
cd /opt
sudo git clone https://github.com/ajread4/prefetcher.git
# cd prefetcher
# pip3 install -r requirements.txt
cd /opt
sudo git clone https://github.com/urbanadventurer/username-anarchy.git
sudo git clone https://github.com/kmahyyg/mremoteng-decrypt.git
sudo git clone https://github.com/S3cur3Th1sSh1t/PowerSharpPack.git
sudo mv PowerSharpPack powersharppack
sudo git clone https://github.com/dirkjanm/PKINITtools
sudo mv PKINITtools pkinittools
# cd pkinittools
# pip install impacket minikerberos
cd /opt
sudo git clone https://github.com/Bashfuscator/Bashfuscator
sudo mv Bashfuscator bashfuscator
# cd bashfuscator
# pip install setuptools==65
# python3 setup.py install --user
cd /opt
#sudo git clone https://github.com/pasquini-dario/LLMmap
#cd LLMmap/
#pip3 install -r requirements.txt


cd 
sudo apt install eyewitness ca-certificates gh rsyslog exiftool ntpdate tree gpp-decrypt pdfid wmi-client build-essential pkg-config libkrb5-dev libclang-dev libevtx-utils chainsaw bloodhound -y
pipx install bloodyad pywhisker updog
pipx ensurepath

#install rusthound
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

cargo install rusthound-ce

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


sudo gunzip /usr/share/wordlists/rockyou.txt.gz
