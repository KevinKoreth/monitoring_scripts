#!/bin/bash
LOG_DIR="./logs"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Disk usage monitoring
echo "===== Disk Usage Report ($DATE) =====" > $LOG_DIR/disk_$DATE.log
df -h >> $LOG_DIR/disk_$DATE.log
echo -e "\n===== Large Directories =====\n" >> $LOG_DIR/disk_$DATE.log
du -sh /home/* 2>/dev/null | sort -hr >> $LOG_DIR/disk_$DATE.log