#!/bin/sh

. /home/engines/functions/checks.sh\r\n \r\nrequired_values=\"domain_name\"\r\ncheck_required_values\r\n\r\n\r\ncat /etc/opendkim/keys/${domain_name}/mail.txt
