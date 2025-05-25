#!/bin/bash
SERVER_NAME="apache"
DATE=$(date +%Y-%m-%d)
BACKUP_FILE="/backups/${SERVER_NAME}_backup_${DATE}.tar.gz"
LOG_FILE="/backups/${SERVER_NAME}_verification.log"

# Create backup
tar -czf "$BACKUP_FILE" /etc/httpd/ /var/www/html/ 2>/dev/null

# Verify backup
echo "[$(date)] Verification for ${BACKUP_FILE}:" >> "$LOG_FILE"
tar -tzf "$BACKUP_FILE" >> "$LOG_FILE" 2>&1
echo "----------------------------------------" >> "$LOG_FILE"