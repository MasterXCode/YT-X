setup(){
  echo''
  echo''
  echo -e "Hello User please tell me your Terminal type" ;
  echo''
  echo''
  echo -e "1) Termux"
  echo''
  echo -e "2) Kali_Linux"
  echo''
  read -p "[*]××××(Type a Number)--> " userinput1;
  #
  if [ "${userinput1:-}" = "1" ]
  then
       apt update && apt upgrade -y && clear && apt install python -y && pip install --upgrade pip && clear && pip install pytube3 && echo'' && echo -e "Done...!" && touch /$PREFIX/bin/ytx && echo 'python /$HOME/YT-X/YT-X.py' > /$PREFIX/bin/ytx && chmod +x /$PREFIX/bin/ytx && echo '' && echo " Run it by Typing >> ytx"
  elif [ "${userinput1:-}" = "2" ]
  then
       apt update && apt upgrade -y && clear && apt install python3 python3-pip -y && pip3 install --upgrade pip3 && clear && pip3 install pytube3 && echo'' && echo -e "Done...!" && touch /usr/bin/ytx && echo 'python3 /root/YT-X/YT-X.py' > /usr/bin/ytx && chmod +x /usr/bin/ytx  && echo ' ' && echo " Run it by Typing >> ytx"
  else
       echo ''
       echo -e "Error.... come on man"
       sleep 2
       setup
  fi
}
setup
