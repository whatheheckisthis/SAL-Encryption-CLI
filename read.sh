#!/usr/bin/env bash
if [ "$1" == "" ]; then
  echo "> Please supply the generated filename"
  echo "> e.g: ./read.sh ./files/myfile.txt"
else
  FILE_RSA=$1
  if test -f $FILE_RSA; then

    # check supplied inline password 
    if [ "$2" == "" ]; then
      read -s -p "> Input passphrase read the content: " INP_PASS
      echo -e "\n"
    else
      INP_PASS=$2
    fi
    
    openssl enc -aes-256-cbc -pbkdf2 -in $FILE_RSA -d -k $INP_PASS
  else
    echo "file not exist"
  fi
fi

