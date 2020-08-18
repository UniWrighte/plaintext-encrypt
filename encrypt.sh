#!/bin/bash

echo "Usage: ./encrypt.sh path/to/id_rsa.pub path/to/input.txt"

if [ -z "$1" ] || [ -z "$2" ];
then
  echo "please provide path to id_rsa.pub key and input file"
  exit 1;
fi


echo $1
echo $2
ssh-keygen -f "$1" -e -m PKCS8 > ./id_rsa.pub.pem

openssl rsautl -encrypt -pubin -inkey ./id_rsa.pub.pem -ssl -in "$2" -out >(base64) | tee output.enc

rm id_rsa.pub.pem
