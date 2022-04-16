#!/usr/bin/bash
#FellFreeToRecode
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
clear
BANNERS () {
printf "${lightgreen}==============================
     GATAU KASIH NAMA APA
${white}         -Adelittle-${lightgreen}
==============================\n
"
}
BANNERS
OPTIONS () {
printf "${red}[>]${white} List      :${lightgreen} "
read list
site=$(cat $list)
}
OPTIONS
printf "\n${lightgreen}Now Checking...\n\n"
for site in $(cat $list)
do
curl=$(curl -s -L -A "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0" "${site}" > save.txt );
href=$(cat save.txt | grep -Po 'href="\K.*?(?=")');
https=$(cat save.txt | grep -Po 'https://\K.*?(?=")');
http=$(cat save.txt | grep -Po 'http://\K.*?(?=")');
src=$(cat save.txt | grep -Po 'src="\K.*?(?=")');
action=$(cat save.txt | grep -Po 'action="\K.*?(?=")');

  printf "${white}[+]${site}\n${BlueF}...=Extract From Href Link=...\n${lightgreen}${href}\n${BlueF}...=Extract From Https Link=...\n${lightgreen}${https}\n${BlueF}...=Extract From Http Link=...\n${lightgreen}${http}\n${BlueF}...=Extract From Src Link=...\n${lightgreen}${src}\n${BlueF}...=Extract From action Link=...\n${lightgreen}${action}\n${BlueF}...=Extract From random Link=...\n${lightgreen}${url}\n${BlueF}...=Extract From JavaScript Link=...\n${lightgreen}${js}${white}\n"
  echo "[+]Done.."
done
