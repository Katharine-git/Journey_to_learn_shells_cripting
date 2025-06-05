#!/bin/bash
# Title: Real-World Shell Script Examples Using `date` Command
# Author: Your Name
# Description: This script demonstrates multiple practical use cases of the `date` command.

# ---------------------------------------------
# 1. Create a backup directory with today’s date
# ---------------------------------------------
echo "Creating backup directory..."
backup_dir="/tmp/backup_$(date +'%Y-%m-%d')"
mkdir -p "$backup_dir"
echo "Backup folder created at: $backup_dir"
echo "---------------------------------------------"

# ---------------------------------------------
# 2. Log the script start and end times
# ---------------------------------------------
log_file="script_runtime.log"
echo "Script started at: $(date +'%Y-%m-%d %H:%M:%S')" >> "$log_file"
sleep 2  # Simulate some task
echo "Script ended at: $(date +'%Y-%m-%d %H:%M:%S')" >> "$log_file"
echo "Log written to $log_file"
echo "---------------------------------------------"

# ---------------------------------------------
# 3. Save disk usage to a timestamped file
# ---------------------------------------------
timestamp=$(date +'%Y%m%d_%H%M%S')
disk_log="disk_usage_$timestamp.log"
df -h > "$disk_log"
echo "Disk usage saved to $disk_log"
echo "---------------------------------------------"

# ---------------------------------------------
# 4. Delete files older than 7 days in /tmp
# ---------------------------------------------
echo "Deleting files older than 7 days in /tmp..."
find /tmp -type f -mtime +7 -exec rm -f {} \;
echo "Old files deleted at: $(date)"
echo "---------------------------------------------"

# ---------------------------------------------
# 5. Generate a system health report
# ---------------------------------------------
report_date=$(date +'%d-%b-%Y')
report_file="health_report_$report_date.txt"
echo "System Health Report - $report_date" > "$report_file"
uptime >> "$report_file"
free -h >> "$report_file"
echo "System report saved to $report_file"
echo "---------------------------------------------"

# ---------------------------------------------
# 6. Wait until a specific time (e.g., 2:00 PM)
# ---------------------------------------------
# NOTE: Commented out to avoid long wait. Uncomment to use.
# echo "Waiting for 14:00..."
# while [ "$(date +%H:%M)" != "14:00" ]; do
#     sleep 30
# done
# echo "It's 2:00 PM - Running the task"
# echo "---------------------------------------------"

# ---------------------------------------------
# 7. Append log entry with current timestamp
# ---------------------------------------------
echo "$(date +'%Y-%m-%d %H:%M:%S') - Custom event logged" >> event.log
echo "Log entry added to event.log"
echo "---------------------------------------------"

echo "✅ All tasks completed."
