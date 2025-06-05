combined_script_content = """#!/bin/bash

# --------------------------------------------
# 1. Delete Files Older Than 5 Days
# Usage: ./combined_scripts.sh /path/to/directory
# --------------------------------------------
if [ "$1" == "delete_old_files" ]; then
  if [ -z "$2" ]; then
    echo "❌ Usage: $0 delete_old_files /path/to/directory"
    exit 1
  fi

  target_dir="$2"

  if [ ! -d "$target_dir" ]; then
    echo "❌ Directory not found!"
    exit 1
  fi

  find "$target_dir" -type f -mtime +5 -exec rm -v {} \\;
  exit 0
fi

# --------------------------------------------
# 2. Wait Until 10:30 AM
# Usage: ./combined_scripts.sh wait_until_1030
# --------------------------------------------
if [ "$1" == "wait_until_1030" ]; then
  target_time="10:30"
  echo "⏳ Waiting until $target_time..."

  while [ "$(date +%H:%M)" != "$target_time" ]; do
    sleep 30
  done

  echo "✅ It's $target_time! Proceeding..."
  exit 0
fi

# --------------------------------------------
# 3. Display Yesterday’s Date
# Usage: ./combined_scripts.sh yesterday_date
# --------------------------------------------
if [ "$1" == "yesterday_date" ]; then
  echo "Yesterday was: $(date -d "yesterday" +'%d-%m-%Y')"
  exit 0
fi

# --------------------------------------------
# 4. Create System Report with Date in Filename
# Usage: ./combined_scripts.sh system_report
# --------------------------------------------
if [ "$1" == "system_report" ]; then
  today=$(date +'%d-%b-%Y')
  filename="system_report_$today.txt"

  {
    echo "🖥️ SYSTEM REPORT - $today"
    echo "=========================="
    date
    uptime
    free -h
    df -h
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 10
    ip a
  } > "$filename"

  echo "✅ Report saved to $filename"
  exit 0
fi

# --------------------------------------------
# 5. Convert Unix Timestamp to Readable Date
# Usage: ./combined_scripts.sh convert_timestamp
# --------------------------------------------
if [ "$1" == "convert_timestamp" ]; then
  read -p "Enter a Unix timestamp: " timestamp

  if [[ ! "$timestamp" =~ ^[0-9]+$ ]]; then
    echo "❌ Invalid timestamp"
    exit 1
  fi

  readable=$(date -d @$timestamp +'%d-%m-%Y %H:%M:%S')
  echo "🕒 Converted Date: $readable"
  exit 0
fi

# If no valid argument provided
echo "Usage:"
echo "  $0 delete_old_files /path/to/directory"
echo "  $0 wait_until_1030"
echo "  $0 yesterday_date"
echo "  $0 system_report"
echo "  $0 convert_timestamp"
exit 1
"""

combined_markdown_content = """# Shell Scripting Practice Questions and Tasks

## Practice Questions (with hints)

1. **Create a folder with today’s date**  
   _Hint_: Use `mkdir` and `date +'%Y-%m-%d'`

2. **Log the start and end time of a script**  
   _Hint_: Use `date +'%T'` and `echo`

3. **Add a timestamp to a filename**  
   _Hint_: Use `date +'%Y%m%d_%H%M%S'`

4. **Delete files older than 5 days**  
   _Hint_: Use `find -mtime +5 -exec rm`

5. **Wait until a specific time (e.g., 10:30 AM)**  
   _Hint_: Use a `while` loop and `date +%H:%M`

6. **Show the day of the week**  
   _Hint_: Use `date +%A`

7. **Display yesterday’s date in DD-MM-YYYY format**  
   _Hint_: Use `date -d "yesterday" +'%d-%m-%Y'`

8. **Add a timestamp to a log message**  
   _Hint_: Use `echo "$(date)" >> logfile.txt`

9. **Create a system report with the date in the filename**  
   _Hint_: Use `date +'%d-%b-%Y'` and commands like `uptime`, `free`, `df`

10. **Convert a hardcoded Unix timestamp to a readable format**  
    _Hint_: Use `date -d @<timestamp> +'%d-%m-%Y %H:%M:%S'`

---

## Shell Scripts

You can run the scripts by passing the first argument as one of the following commands:

- `delete_old_files /path/to/directory`
- `wait_until_1030`
- `yesterday_date`
- `system_report`
- `convert_timestamp`

Example to delete files older than 5 days from `/tmp`:

```bash
./combined_scripts.sh delete_old_files /tmp
