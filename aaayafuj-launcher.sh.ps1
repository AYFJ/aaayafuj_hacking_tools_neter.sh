#!/bin/bash

# aaayafuj Unified Launcher
# This script installs all dependencies and launches the platform

set -e

BOLD=$(tput bold)
NORMAL=$(tput sgr0)
GREEN="\033[0;32m"
CYAN="\033[0;36m"
RESET="\033[0m"

echo -e "${BOLD}${CYAN}🚀 Welcome to the Aaayafuj Cybersecurity Platform${RESET}"

# 🛠️ Step 1: Install base dependencies
echo -e "${GREEN}🔧 Installing dependencies...${RESET}"
sudo apt update -y
sudo apt install -y git python3 python3-pip php curl unzip net-tools nmap

# Optional: install Metasploit, ngrok
command -v msfconsole >/dev/null || {
    echo -e "${CYAN}Installing Metasploit Framework...${RESET}"
    curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfinstall | bash
}

command -v ngrok >/dev/null || {
    echo -e "${CYAN}Installing ngrok...${RESET}"
    curl -s https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok.zip
    unzip ngrok.zip
    chmod +x ngrok
    sudo mv ngrok /usr/local/bin/
    rm ngrok.zip
}

# 🧩 Step 2: Clone tools if needed
echo -e "${GREEN}📦 Cloning modules...${RESET}"
[ -d aaayafuj_link_generator ] || git clone https://github.com/YOUR_USERNAME/aaayafuj_link_generator.git

# 🔥 Step 3: Build Dashboard Menu
while TRUE; do
    echo -e "\n${BOLD}Select a tool to run:${NORMAL}"
    echo -e "1) 🔗 Launch Link Generator"
    echo -e "2) 🧠 Run AI Terminal Assistant"
    echo -e "3) 💥 Start Penetration Test Pack"
    echo -e "4) 💬 Launch Net AAA Secure Chat"
    echo -e "5) 🌐 Open aaayafuj Marketplace (web)"
    echo -e "6) 🛑 Exit\n"
    read -p "Your choice: " choice

    case $choice in
        1)
            echo -e "${CYAN}Launching Link Generator...${RESET}"
            cd aaayafuj_link_generator
            chmod +x link_generator.sh
            ./link_generator.sh
            cd ..
            ;;
        2)
            echo -e "${CYAN}Starting AI Terminal Assistant...${RESET}"
            # Replace with your actual AI tool command
            python3 aaayafuj_ai/terminal_assistant.py
            ;;
        3)
            echo -e "${CYAN}Launching Penetration Test Suite...${RESET}"
            bash aaayafuj_tools/start_pentest.sh
            ;;
        4)
            echo -e "${CYAN}Launching Net AAA Secure Chat...${RESET}"
            bash netAAA/start_chat.sh
            ;;
        5)
            echo -e "${CYAN}Opening Marketplace in browser...${RESET}"
            xdg-open "https://aaayafuj.marketplace.xyz" || open "https://aaayafuj.marketplace.xyz"
            ;;
        6)
            echo -e "${GREEN}Bye! Stay ethical, hacker 😎${RESET}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid choice. Try again.${RESET}"
            ;;
    esac
done
