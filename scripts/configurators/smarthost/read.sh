#!/bin/sh

if test -f /home/engines/scripts/configurators/saved/smarthost\r\nthen\r\n\t. /home/engines/scripts/configurators/saved/smarthost\r\n\t echo '{\"smart_hostname\":\"'$smart_hostname'\",\r\n           \"smart_host_port\":\"'$smart_host_port'\",\r\n           \"smart_host_user\":\"'$smart_host_user'\",\r\n           \"auth_type\":\"'$auth_type'\",\r\n           \"enabled\":\"'$enabled'\",\r\n           \"smart_host_passwd\":\"'$smart_host_passwd'\"} '\r\nelse\r\n\techo '{\"smarthost_hostname\":\"Not Set\"}'\r\nfi\r\nexit 0
