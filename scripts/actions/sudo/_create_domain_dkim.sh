#!/bin/sh

. /home/engines/functions/checks.sh\r\n \r\n domain_name=$1\r\nrequired_values=\"domain_name\"\r\ncheck_required_values\r\nif test -f /etc/opendkim/keys/$domain_name/mail.private\r\n then\r\n  echo '{\"error\":\"Domain key exists for '$domain_name'\"}'\r\n  exit 2\r\n fi\r\n\r\ndomain_dir=/etc/opendkim/keys/$domain_name\r\nmkdir -p $domain_dir\r\n\r\ncd $domain_dir\r\nopendkim-genkey -t -s mail -d $domain_name\r\nchmod ugo+r $domain_dir/mail.txt\r\n\r\n/home/engines/scripts/engine/sudo/rebuild_dkim.key.sh\r\n echo '{\"Success\":\"Domain key for '$domain_name' Created\"}'\r\nexit 0
