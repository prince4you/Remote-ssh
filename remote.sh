#!/usr/bin/ env bash

# Colors
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m' # No Color

# Check if Nala is installed
if command -v nala &> /dev/null; then
    echo -e "{GREWN}[✔] Nala is already installed!..{NG}"
else
    echo -e "{RED}[-] Nala is not installed. Installing now...{NG}"

    # Install Nala
    apt update && apt install nala -y
    nala install nala
    # Verify installation
    if command -v nala &> /dev/null; then
        echo -e "{GREEN}[✔] Nala has been successfully installed!{NC}"
    else
        echo "[✖] Nala installation failed. Please check your package manager."
    fi
fi

# Banner
clear
echo -e "${CYAN} ⠀
    ⠀⠀ ⠀⠀   ⠀⠀⢀⠆⠀⢀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡀⠀⠰⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀  ⠀ ⠀⠀   ⠀⢠⡏⠀⢀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⡀⠀⢹⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀      ⠀⣰⡟⠀⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⠀⢻⣆⠀⠀⠀⠀⠀
  ⠀ ⠀⠀   ⠀⢠⣿⠁⠀⣸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⠀⠈⣿⡆⠀⠀⠀⠀
⠀⠀     ⠀ ⠀⣾⡇⠀⢀⣿⡇⠀⠀ ⠀[Prince4you]⠀ ⠀⠀⢸⣿⡀⠀⢸⣿⠀⠀⠀⠀
  ⠀   ⠀ ⠀⢸⣿⠀⠀⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣇⠀⠀⣿⡇⠀⠀⠀
⠀⠀      ⠀⣿⣿⠀⠀⣿⣿⣧⣤⣤⣤⣤⣤⣤⡀⠀⣀⠀⠀⣀⠀⢀⣤⣤⣤⣤⣤⣤⣼⣿⣿⠀⠀⣿⣿⠀⠀⠀
⠀      ⠀⢸⣿⡏⠀⠀⠀⠙⢉⣉⣩⣴⣶⣤⣙⣿⣶⣯⣦⣴⣼⣷⣿⣋⣤⣶⣦⣍⣉⡉⠋⠀⠀⠀⢸⣿⡇⠀⠀
⠀      ⠀⢿⣿⣷⣤⣶⣶⠿⠿⠛⠋⣉⡉⠙⢛⣿⣿⣿⣿⣿⣿⣿⣿⡛⠛⢉⣉⠙⠛⠿⠿⣶⣶⣤⣾⣿⡿⠀⠀
⠀      ⠀⠀⠙⠻⠋⠉⠀⠀⠀⣠⣾⡿⠟⠛⣻⣿⣿⣿⣿⣿⣿⣿⣿⣟⠛⠻⢿⣷⣄⠀⠀⠀⠉⠙⠟⠋⠀⠀⠀
     ⠀⠀ ⠀⠀⠀⠀⠀⢀⣤⣾⠿⠋⢀⣠⣾⠟⢫⣿⣿⣿⣿⣿⣿⡍⠻⣷⣄⡀⠙⠿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀
⠀   ⠀  ⠀ ⠀⠀⣠⣴⡿⠛⠁⠀⢸⣿⣿⠋⠀⢸⣿⣿⣿⣿⣿⣿⡗⠀⠙⣿⣿⡇⠀⠈⠛⢿⣦⣄⠀⠀⠀⠀⠀
      ⢀⠀⣀⣴⣾⠟⠋⠀⠀⠀⠀⢸⣿⣿⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠙⠻⣷⣦⣀⠀⣀  Tool Name [Remote-ssh]
      ⢸⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠈⣿⣿⣿⣿⣿⣿⠁⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠈⠙⣿⣿⡟  Author [Mr_Sunil Noob coder]
      ⢸⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⢹⣿⣿⣿⣿⡏⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡇  youtube [Noob cyber tech]
      ⢸⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⢿⣿⣿⡿⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⡇  Version: 1.0
      ⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⠈⠿⠿⠁⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀
      ⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⢀⣿⡟⠀
      ⠀⠘⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀Call⠀⠀   ⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠃⠀
⠀      ⠀⠸⣷⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠀⠀⠀⠀Me⠀⠀⠀⠀ ⠀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⣾⠏⠀⠀
⠀⠀      ⠀⢻⡆⠀⠀⠀⠀⠀ ⠀⠸⣿⡄⠀⠀⠀ ⠀Sunil ⣿⠇⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀
⠀⠀⠀      ⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠀⠀⡾⠀⠀⠀⠀
   ⠀⠀⠀   ⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠇⠀⠀⠀⠀⠀⠀⠀⡸⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀  ⠀  ⠀⠀⠀⠀   ⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⠀   ⠀⠀⠀⠀⠀⠀⠣⠀⠀⠀⠀⠀⠀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ${NC}"
sleep 3s
echo -e "${GREEN}[Follow us on our Social Media for more updates]${NC}"
sleep 1s
echo -e "${CYAN}[!]Facebook\n[!]Instagram\n[!]Youtube\n[!]Telegram${NC}"
sleep 1s

# Check if openssh is installed
if command -v openssh &> /dev/null; then
    echo -e "{GREEN}[✔] openssh  is already installed!...{NC}"
else
    echo -e "${RED}Openssh  is not installed. Installing now...${NC}"

    # Install openssh
    nala update && nala upgrade && nala install openssh -y
    apt install openssh
    # Verify installation
    if command -v openssh &> /dev/null; then
        echo -e "{GREEN}[✔] openssh has been successfully installed!...{NC}"
    else
        echo -e "{RED}[✖] openssh installation failed. Please check your package manager...{NG}"
    fi
fi


# Step 2: Start SSH Server
echo -e "${CYAN}[+] Starting SSH Server...${NC}"
sshd
#step 3: set ssh password
echo -e "${GREEN}[+] Set Your SSH Login Password${NC}"
passwd
# Step 4: Get Local IP Address
echo -e "${CYAN}[+] Fetching Local IP Address...${NC}"
sleep 1s
# Try multiple methods to get the IP
IP=$(ifconfig | grep -A 1 wlan0 | grep inet | awk '{print $2}' | head -n 1)
if [ -z "$IP" ]; then
    IP=$(ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1 | head -n 1)
fi
if [ -z "$IP" ]; then
    IP=$(ip route get 8.8.8.8 | awk '{print $7}' | head -n 1)
fi

# Step 5: Show Connection Command
if [ -n "$IP" ]; then
    echo -e "${GREEN}[+] SSH Server is running!${NC}"
    echo -e "Use this command in Windows PowerShell to connect:"
    echo -e "${CYAN}ssh -p 8022 $(whoami)@$IP${NC}"
else
    echo -e "${RED}[!] Could not fetch the IP address. Try running 'ifconfig' or 'ip a' manually.${NC}"
fi
