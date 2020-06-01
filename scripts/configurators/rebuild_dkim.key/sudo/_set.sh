#!/bin/sh

cd /etc/opendkim/keys/\r\nrm /etc/opendkim/KeyTable /etc/opendkim/SigningTable \r\ntouch /etc/opendkim/KeyTable /etc/opendkim/SigningTable \r\n\r\nfor domain in `ls `\r\n do \r\n \techo default._domainkey.$domain $domain:default:/etc/opendkim/keys/$domain/mail.private >> /etc/opendkim/KeyTable\r\n \techo '*@'$domain default._domainkey.$domain >> /etc/opendkim/SigningTable \r\n done
