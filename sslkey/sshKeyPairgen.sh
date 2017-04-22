#!/bin/bash
# @tylerwang789
# ttw789@gmail.com
# Aug 8 , 2016
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
#

name=$1

ssh-keygen -t rsa -b 4096 -C "$name"
