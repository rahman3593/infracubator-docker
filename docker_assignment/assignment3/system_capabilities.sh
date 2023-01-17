#!/bin/bash
echo "current date: $(date +"%d-%m-%y")"
echo "OS Information: $(cat /etc/os-release)"
echo "CPU Information: $(cat /proc/cpuinfo)"
echo "Memory Information:: $(cat /proc/meminfo)"
