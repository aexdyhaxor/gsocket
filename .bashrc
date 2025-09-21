case $- in
    *i*) ;;
    *) return ;;
esac

trap 'echo -e "\n\e[1;31m[!] Santai bang, jangan main tebas !!!\e[0m\n"; continue' INT

expected_hash="0cd81ec34bac18301055cffd1e3b38ba1cae70c060f13a6fc0999a5ebe37ec7c"
input_hash=""

echo -e "\e[1;36m======================================\e[0m"
echo -e "   \e[1;33mDIHINA HITAM TAK TUMBANG !!!!\e[0m"
echo -e "\e[1;36m                  ↓↓↓                   \e[0m"
echo -e "\e[1;35m  DIKASIH ! :\e[0m \e[1;36mIMUT NGAWI MAKASIH BANG !\e[0m"
echo -e "\e[1;36m======================================\e[0m"

while [[ "$input_hash" != "$expected_hash" ]]; do
    echo -ne "\e[1;36m[+] Masukkan Password: \e[0m"
    read -s input_pass
    echo
    input_hash=$(echo -n "$input_pass" | sha256sum | awk '{print $1}')
    
    if [[ "$input_hash" != "$expected_hash" ]]; then
        echo -e "\e[1;31m[!] AWOKAWOKAWOK , NGAPAIN DEK ?\e[0m"
    fi
done

echo -e "\n\e[1;32m[SUCCESS] Akses diterima!\e[0m"
sleep 1

logo='
 ________  ____   _ _____      _   _ _____   ___  _    _ _____ 
|_   _|  \/  | | | |_   _|    | \ | |  __ \ / _ \| |  | |_   _|
  | | | .  . | | | | | |______|  \| | |  \// /_\ \ |  | | | |  
  | | | |\/| | | | | | |______| . ` | | __ |  _  | |/\| | | |  
 _| |_| |  | | |_| | | |      | |\  | |_\ \| | | \  /\  /_| |_ 
 \___/\_|  |_/\___/  \_/      \_| \_/\____/\_| |_/\/  \/ \___/ 
                                                                                                                              
'

echo -e "\e[1;35m$logo\e[0m"
echo -e "\e[1;36m======================================\e[0m"
echo -e "      \e[1;33mSelamat Datang, Imut-JMK\e[0m \e[1;35m👾\e[0m"
echo -e "\e[1;33m   Siap menjalankan perintah, ketua!"
echo -e "\e[1;36m======================================\e[0m"
echo

timenow=$(date +'%H:%M')
load=$(awk '{print $1 ", " $2 ", " $3}' /proc/loadavg)

echo -e "\e[1;36mThe time now is $timenow UTC\e[0m"
echo -e "\e[1;36mServer load: $load\e[0m"
echo -e ""

trap - INT
