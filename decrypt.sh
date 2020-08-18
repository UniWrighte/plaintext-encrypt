#!/bin/bash

echo "Usage: path/to/id_rsa path/to/encrypted.txt"

if [ -z "$1" ] || [ -z "$2" ];
then
  echo "please provide path to id_rsa key and encrypted file"
  exit 1;
fi

openssl rsa -in "$1" -outform pem > ./id_rsa.pem

base64 --decode "$2" >> temp.enc

openssl rsautl -decrypt -inkey ./id_rsa.pem -in temp.enc

rm ./id_rsa.pem temp.enc
