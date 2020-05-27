#!/bin/sh

if test -f /home/engines/scripts/configurators/saved/deliver_local\r\n then\r\n  deliver_local=true\r\n  #`cat /home/engines/scripts/configurators/saved/deliver_local`\r\n  else\r\n    deliver_local=false\r\nfi  \r\n \r\nif test -f /home/engines/scripts/configurators/saved/domain\r\n then\r\n    domain_name=`cat /home/engines/scripts/configurators/saved/domain`   \r\n\techo '{\"domain_name\":\"'$domain_name'\",\"deliver_local\":\"'$deliver_local'\"}'\r\nelse\r\n\techo '{\"domain_name\":\"Not Set\",\"deliver_local\":\"false\"}'\r\nfi\r\nexit 0
