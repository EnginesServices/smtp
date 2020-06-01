#!/bin/sh

. /home/engines/functions/checks.sh\r\n \r\n \r\nrequired_values=\"domain_name private public\"\r\ncheck_required_values\r\n\r\necho $public >/tmp/public\r\n\r\necho $private | sudo -nu opendkim /home/engines/scripts/actionators/sudo/_import_domain_dkim.sh $domain_name
