#!/bin/bash

0 * * * * /c/users/grace/DevOps/server-stats.sh

echo "==============================="
echo "      SERVER PERFORMANCE       "
echo "==============================="

echo ""
echo "1. TOTAL CPU USAGE"
top -bn1 | grep "Cpu(s)" | \
awk '{print "CPU Usage: " 100 - $8 "%"}'

echo ""
echo "2. MEMORY USAGE"

free -m | awk 'NR==2{
total=$2
used=$3
free=$4
percent=(used/total)*100

printf "Total Memory: %d MB\n", total
printf "Used Memory : %d MB\n", used
printf "Free Memory : %d MB\n", free
printf "Memory Usage: %.2f%%\n", percent
}'

echo ""
echo "3. DISK USAGE"

df -h / | awk 'NR==2{
print "Total Disk :", $2
print "Used Disk  :", $3
print "Free Disk  :", $4
print "Disk Usage :", $5
}'

echo ""
echo "4. TOP 5 PROCESSES BY CPU USAGE"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo ""
echo "5. TOP 5 PROCESSES BY MEMORY USAGE"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

echo ""
echo "==============================="
echo "      ADDITIONAL STATS         "
echo "==============================="

echo ""
echo "OS VERSION:"
cat /etc/os-release | grep PRETTY_NAME

echo ""
echo "UPTIME:"
uptime -p

echo ""
echo "LOAD AVERAGE:"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "LOGGED IN USERS:"
who

echo ""
echo "FAILED LOGIN ATTEMPTS:"
sudo lastb | head
