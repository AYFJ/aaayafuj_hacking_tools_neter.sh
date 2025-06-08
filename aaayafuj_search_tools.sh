#!/bin/bash

# Aaayafuj Search Intelligence Tool by Yafet Yohanes

banner() {
    echo "==============================================="
    echo "        🔍 aaayafuj GLOBAL SEARCH TOOL         "
    echo "==============================================="
}

menu() {
    echo "[1]  Search aaayafuj on Instagram"
    echo "[2]  Search aaayafuj on GitHub"
    echo "[3]  Search aaayafuj on YouTube"
    echo "[4]  Search aaayafuj on Net AAA"
    echo "[5]  Search aaayafuj on Marketplace"
    echo "[6]  Search aaayafuj OS"
    echo "[7]  Search aaayafuj Ethical Hacking Platform"
    echo "[8]  Search aaayafuj on Facebook"
    echo "[9]  Search aaayafuj on Twitter (X)"
    echo "[10] Search aaayafuj on SoundCloud"
    echo "[11] Search aaayafuj on TikTok"
    echo "[12] Exit"
    echo
}

launch_search() {
    case $1 in
        1)  xdg-open "https://www.instagram.com/explore/tags/aaayafuj" ;;
        2)  xdg-open "https://github.com/search?q=aaayafuj" ;;
        3)  xdg-open "https://www.youtube.com/results?search_query=aaayafuj" ;;
        4)  xdg-open "https://www.google.com/search?q=aaayafuj+Net+AAA" ;;
        5)  xdg-open "https://www.google.com/search?q=aaayafuj+marketplace" ;;
        6)  xdg-open "https://www.google.com/search?q=aaayafuj+operating+system" ;;
        7)  xdg-open "https://www.google.com/search?q=aaayafuj+ethical+hacking+platform" ;;
        8)  xdg-open "https://www.facebook.com/search/top?q=aaayafuj" ;;
        9)  xdg-open "https://twitter.com/search?q=aaayafuj" ;;
        10) xdg-open "https://soundcloud.com/search?q=aaayafuj" ;;
        11) xdg-open "https://www.tiktok.com/search?q=aaayafuj" ;;
        12) echo "💀 Exiting the matrix..."; exit ;;
        *) echo "❌ Invalid option. Choose wisely." ;;
    esac
}

# Execute Script
banner
while true; do
    menu
    read -p "Choose a number to search aaayafuj: " option
    launch_search $option
    echo
done
