# DevOps-Roadmap-Beginner1
# Server Performance Stats Script

A Bash script that analyzes basic Linux server performance statistics.

## Features

This script displays:

- Total CPU usage
- Total memory usage
- Total disk usage
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

### Additional Statistics

- OS version
- System uptime
- Load average
- Logged in users
- Failed login attempts

---

# Requirements

- Linux Operating System
- Bash shell
- sudo privileges (for failed login attempts)

---



# Installation

Clone the repository:

```bash
git clone https://github.com/owolabigrace/DevOps-Roadmap-Beginner1.git
```
Move into the project directory

```
cd DevOps-Roadmap-Beginner1
```
Make the script executable:
```
chmod +x server-stats.sh
```
#Usage
Run the script using:
```
./server-stats.sh
```
#Or
```
bash server-stats.sh
```
#Example Output

===============================
      SERVER PERFORMANCE
===============================

1. TOTAL CPU USAGE
CPU Usage: 15.2%

2. MEMORY USAGE
Total Memory: 4096 MB
Used Memory : 2100 MB
Free Memory : 1996 MB
Memory Usage: 51.27%

3. DISK USAGE
Total Disk : 50G
Used Disk  : 20G
Free Disk  : 28G
Disk Usage : 42%

#Commands Used
The script uses common Linux utilities such as:

touch
ls
mkdir
ps
git commands (push, pull, commit -m, branch, add .)

#Project Structure
 ```
.
├── server-stats.sh
└── README.md
```

#Author
owolabigrace

