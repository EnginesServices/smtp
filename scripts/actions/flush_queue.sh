#!/bin/sh

fq=`mktemp`\r\npostqueue -f &> $fq\r\n\r\nresult=$?\r\n\r\nstring_for_json=`cat $fq`\r\n\r\nrm $fq\r\n\r\nstring_for_json=`echo $string_for_json | tr -d \"'\\r\\\"\\t\\f\\b\\n\\v\"`\r\n\r\nif test $result -eq 0\r\n then\r\n  echo '{\"Result\":\"OK\"}'\r\nelse\r\n echo '{\"Result\":\"FAILED\",\"ReturnCode\":\"'$result'\",\"Error\":\"'$string_for_json'\"}'\r\nfi
