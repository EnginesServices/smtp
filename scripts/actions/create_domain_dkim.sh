#!/bin/sh
. /home/engines/functions/checks.sh\r\n \r\n \r\nrequired_values=\"domain_name\"\r\ncheck_required_values\r\n\r\nsudo -nu opendkim /home/engines/scripts/actionators/sudo/_create_domain_dkim.sh $domain_name
