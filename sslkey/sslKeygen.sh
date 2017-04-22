#!/bin/bash
# @tylerwang789
# ttw789@gmail.com
# Aug 8 , 2016
# ./sslKeygen.sh privatekey_name
#

privatekey=$1
if [[ $privatekey ]]
then
#	echo file name defined;
	openssl genrsa -out ${privatekey}_private.pem 1024
	openssl pkcs8 -topk8 -inform PEM -in  ${privatekey}_private.pem -outform PEM -nocrypt -out  ${privatekey}_pkcs8_private.pem
	openssl rsa -in ${privatekey}_private.pem -pubout -out ${privatekey}_public.pem
else
	echo no file name defined;
fi

