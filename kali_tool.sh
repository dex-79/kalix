#!/bin/bash

set -x
# checking for homebrew is installed in your machine or not.
function mac {
    for i in 1 2
    do
        brew -h
        if [ $? -eq 0 ]; then
            codee
            echo " You have Sucessfully installed kali tools!"
            break
        else
            # Downloading and installing Homebrew from the official website.
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            # After installing, add it to the path:
            echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
            eval "$(/opt/homebrew/bin/brew shellenv)"
        fi

    done
}

function print_kalix {
    
    echo "      _         _ _           "
    echo "     | | ____ _| (_)_  __     "
    echo "     | |/ / _' | | \ \/ /     "
    echo "     |   < (_| | | |>  <      "
    echo "     |_|\_\__,_|_|_/_/\_\     "
    echo "                   By Alok Raj"
    echo ""  # no intension just blank line at the end for spacing

}
print_kalix
os_name=$(uname -s)
if [[ "$os_name" == "Darwin" ]]; then
    # Code specific to Mac (macOS)
    mac
elif [[ "$os_name" == "Linux" ]]; then
    # Code specific to Debian (or other Linux distributions)
    echo " This script is under built for linux ( [!] Have a humble request to use this in Macintosh)"
else
    echo " This script is under built for" $os_name "( [!] Have a humble request to use this in Macintosh)"
fi
function codee{
# installing tools.
    brew install aircrack-ng
    brew install amap
    brew install apktool
    brew install arp-scan
    brew install binwalk
    brew install capstone
    brew install cmu-sphinxbase
    brew install cowpatty
    brew install crunch
    brew install dc3dd
    brew install ddrescue
    brew install dex2jar
    brew install dns2tcp
    brew install dnsmap
    brew install dnstracer
    brew install dos2unix
    brew install ettercap
    brew install fcrackzip
    brew install foremost
    brew install fragroute
    brew install hping
    brew install httptunnel
    brew install hydra
    brew install john-jumbo
    brew install libbtbb
    brew install libewf
    brew install libfreefare
    brew install libmicrohttpd
    brew install libnfc
    brew install lynis
    brew install masscan
    brew install mfcuk
    brew install mitmproxy
    brew install msgpack
    brew install ncrack
    brew install nikto
    brew install nmap
    brew install p0f
    brew install pixz
    brew install proxychains-ng
    brew install pwnat
    brew install qemu
    brew install reaver
    brew install rtl-sdr
    brew install rtpbreak
    brew install sipp
    brew install skipfish
    brew install sleuthkit
    brew install slowhttptest
    brew install smali
    brew install sqlmap
    brew install ssdeep
    brew install sslscan
    brew install thc-pptp-bruter
    brew install theharvester
    brew install truecrack
    brew install valgrind
    brew install volatility
    brew install wine
    brew install winexe
    brew install yara
    brew install owasp-zap
    brew install --cask wireshark   # Network protocol analyzer (GUI)
    brew install --cask burp-suite
    brew install netcat       # Networking utility
    brew install wget         # Download utility
}