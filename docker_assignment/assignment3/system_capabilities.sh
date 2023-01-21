#!/bin/bash
sh ./welcome_message.sh
echo "current date: $(date +"%d-%m-%y")"
echo "OS Information: $(cat /etc/os-release)"
echo "CPU Information: $(cat /proc/cpuinfo)"
echo "Memory Information:: $(cat /proc/meminfo)"
