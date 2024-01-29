#!/bin/bash

# Specify source and destination directories
SOURCE_DIR="/path/to/source_directory"
REMOTE_SERVER="user@remote-server:/path/to/backup_directory"

# Function to perform backup using rsync
perform_backup() {
    echo "Starting backup..."
    
    # Run rsync command to copy files to the remote server
    rsync -avz --delete "$SOURCE_DIR" "$REMOTE_SERVER"
    
    # Check the exit status of rsync
    if [ $? -eq 0 ]; then
        echo "Backup completed successfully."
        echo "Backup completed successfully." >> backup_report.txt
    else
        echo "Backup failed. Check the logs for details."
        echo "Backup failed. Check the logs for details." >> backup_report.txt
    fi
}

# Function to generate a report
generate_report() {
    echo "Backup Report - $(date)" > backup_report.txt
    echo "------------------------" >> backup_report.txt
}

# Main function
main() {
    generate_report
    perform_backup
}

# Execute the script
main
