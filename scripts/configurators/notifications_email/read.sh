#!/bin/sh

if test -f /home/engines/scripts/configurators/saved/notifications_email\r\nthen\r\n    . /home/engines/scripts/configurators/saved/notifications_email\r\n     echo '{\"notifications_email\":\"'$notifications_email'\",\r\n     \t\t\"postmaster_email\":\"'$postmaster_email'\",\r\n     \t\t\"hostmaster_email\":\"'$hostmaster_email'\",\r\n     \t\t\"webmaster_email\":\"'$webmaster_email'\"}'\r\nelse\r\n\techo '{\"notifications_email\":\"Not Set\"}'\r\nfi\r\nexit 0
