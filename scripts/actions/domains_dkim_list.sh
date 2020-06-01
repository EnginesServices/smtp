#!/bin/sh

echo -n '{\"dkim_domains\":['\r\n\r\nif test -d /etc/opendkim/keys/\r\n then\r\n  cd /etc/opendkim/keys/\r\n  n=0\r\n  for domain in `ls`\r\n   do\r\n    if test $n -ne 0\r\n     then\r\n      echo -n \",\"\r\n    else\r\n      n=1\r\n    fi  \r\n    echo -n '\"'$domain'\"'\r\ndone\r\nfi\r\n\r\necho ']}'
