#!/bin/sh

if test -f /home/engines/scripts/configurators/saved/mail_message_size\r\n then\r\n  max_size=`cat /home/engines/scripts/configurators/saved/mail_message_size`\r\nelse\r\n max_size=10240000\r\nfi \r\n\r\necho '{\"max_size\":\"'$max_size'\"}'\r\n\r\nexit 0
