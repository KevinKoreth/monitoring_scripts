#!/bin/bash
LOG_DIR="./logs"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

echo "===== Process Report ($DATE) =====" > $LOG_DIR/process_$DATE.log
ps aux --sort=-%cpu | head -10 >> $LOG_DIR/process_$DATE.log
echo -e "\n===== Memory Usage =====\n" >> $LOG_DIR/process_$DATE.log
ps aux --sort=-%mem | head -10 >> $LOG_DIR/process_$DATE.log