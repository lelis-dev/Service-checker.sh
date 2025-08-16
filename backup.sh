#!/bin/bash

SOURCE="$HOME/backup"
DESTINATION="$HOME/backups"
ARCHIVE="$DESTINATION/backup_$(date +%F).tar.gz"
LOG="$DESTINATION/salvamento.log"

mkdir -p "$DESTINATION"

echo "Backup on $(date)" >> "$LOG"
tar -czf "$ARCHIVE" "$SOURCE"

echo "Backup created: $ARCHIVE"
