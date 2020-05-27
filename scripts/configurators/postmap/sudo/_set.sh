#!/bin/sh

if ! test -f \"/home/postfix/$1\" \r\n then\r\n  if test -f \"/home/engines/templates/$1\"\r\n   then\r\n    cp \"/home/engines/templates/$1\" /home/postfix/\r\n    chown postfix \"/home/postfix/$1\"\r\n  else  \r\n    touch \"/home/postfix/$1\"\r\n    chown postfix \"/home/postfix/$1\"\r\n  fi   \r\n fi \r\ncp \"/home/postfix/$1\" /etc/postfix/maps/\r\n\r\npostmap  /etc/postfix/maps/\"$1\"
