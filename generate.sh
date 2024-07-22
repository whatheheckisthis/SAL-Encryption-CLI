#!/usr/bin/env bash
if [ "$1" == "" ]; then
  echo "> Please supply the absolute path of the rsa-key"
  echo "> e.g: ./generate.sh /home/myuser/.ssh/id_rsa"
else
  FILE_RSA=$1
  if test -f "$FILE_RSA"; then
    read -s -p "> Input passphrase for encyption: " INP_PASS

    RSA_KEY=$(cat $1)
    FILE_NAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
    FILE_RESULT="$FILE_NAME.dat"

    if [ ! -d files ]; then 
      mkdir files
    fi

    openssl enc -aes-256-cbc -pbkdf2 -salt -in $FILE_RSA -k "$INP_PASS" > ./files/$FILE_RESULT

    echo -e "\n> Encrypted file was saved on ./files/$FILE_RESULT"
    
  else
    echo "file not exist"
  fi
fi

