#!/bin/sh

. /home/engines/functions/checks.sh\r\n domain_name=$1\r\nrequired_values=\"domain_name\"\r\ncheck_required_values\r\n\r\nrm -r  /etc/dkim/keys/$domain_name /etc/opendkim/keys/$domain_name\r\n\r\n/home/engines/scripts/engine/sudo/rebuild_dkim.key.sh
