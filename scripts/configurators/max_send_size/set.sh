#!/bin/sh

. /home/engines/functions/checks.sh\r\nrequired_values=\"max_size\"\r\ncheck_required_values\r\n \r\n if test -f /home/engines/scripts/configurators/saved/mail_message_size\r\n then \r\n   curr=`cat /home/engines/scripts/configurators/saved/mail_message_size`\r\n    if test $curr -eq $max_size\r\n      then \r\n       exit 0\r\n    fi\r\nfi      \r\n\r\necho -n $max_size > /home/engines/scripts/configurators/saved/mail_message_size\r\n \r\nsudo -n /home/engines/scripts/configurators/sudo/rebuild_main.sh
