#!/bin/sh

postconf -e myhostname=\"$1\"\r\necho \"$1\" > /etc/postfix/mailname
