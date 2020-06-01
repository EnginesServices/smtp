#!/bin/sh

if ! test -f /etc/postfix/mailname\r\n then\r\n sudo -n /home/engines/scripts/engine/sudo/_set_mailname.sh \"smtp.engines.internal\"\r\n fi\r\n\r\nif ! test -f /home/engines/scripts/configurators/saved/mail_message_size\r\n  then\r\n    max_size=10240000 /home/engines/scripts/configurators/set_max_send_size.sh\r\nfi\r\n\r\nfor file in transport generic smarthost_passwd aliases/aliases\r\n do\r\n  sudo -n /home/engines/scripts/engine/sudo/_postmap.sh $file\r\ndone
