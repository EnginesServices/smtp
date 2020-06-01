#!/bin/sh

if test -f /var/spool/postfix/pid/master.pid\r\n then\r\n  pid=`cat /var/spool/postfix/pid/master.pid`\r\n  sudo -n /home/engines/scripts/signal/sudo/_kill_postfix.sh $1\r\n   if ! test $1 = HUP\r\n    then\r\n      wait_for_pid_exit\r\n   fi\r\nfi
