#!/bin/sh

. /home/engines/functions/checks.sh\r\nrequired_values=\"queue_id\"\r\ncheck_required_values \r\n\r\nrf=`mktemp`\r\nsudo -n /home/engines/scripts/actionators/sudo/_rm_email.sh   $queue_id &> $rf\r\nresult=$?\r\nstring_for_json=`cat $rf`\r\nrm $rf\r\nstring_for_json=`echo $string_for_json | tr -d \"'\\r\\\"\\t\\f\\b\\n\\v\"`\r\nif test $result -eq 0\r\n then\r\n  echo '{\"Result\":\"OK\"}'\r\n  else\r\n   echo '{\"Result\":\"FAILED\",\"ReturnCode\":\"'$result'\",\"Error\":\"'$string_for_json'\"}'\r\nfi
