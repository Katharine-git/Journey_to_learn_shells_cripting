#!/bin/bash
# Purpose: Demonstrate usage of `date` command in shell scripting

# 1. Current date and time
echo "Current date and time:"
date
# Output: Mon May 27 10:15:20 UTC 2025

echo "--------------------------------"

# 2. Custom format: YYYY-MM-DD
echo "Date in YYYY-MM-DD format:"
date +"%Y-%m-%d"
# Output: 2025-05-27

# 3. Custom format: DD/MM/YYYY
echo "Date in DD/MM/YYYY format:"
date +"%d/%m/%Y"
# Output: 27/05/2025

# 4. Time only: HH:MM:SS
echo "Current time:"
date +"%H:%M:%S"
# Output: 10:15:20

# 5. Full date and time: YYYY-MM-DD_HH-MM-SS (good for filenames)
echo "Date and time for filename:"
date +"%Y-%m-%d_%H-%M-%S"
# Output: 2025-05-27_10-15-20

# 6. Display weekday name
echo "Today is:"
date +"%A"
# Output: Tuesday

# 7. Display month name
echo "Current month is:"
date +"%B"
# Output: May

# 8. Yesterday's date
echo "Yesterday was:"
date -d "yesterday" +"%Y-%m-%d"
# Output: 2025-05-26

# 9. Tomorrow's date
echo "Tomorrow will be:"
date -d "tomorrow" +"%Y-%m-%d"
# Output: 2025-05-28

# 10. Unix timestamp (seconds since 1970-01-01)
echo "Current Unix timestamp:"
date +%s
# Output: 1748337320

# 11. Convert Unix timestamp back to readable format
echo "Readable time from timestamp:"
date -d @1748337320
# Output: Mon May 27 10:15:20 UTC 2025

# 12. Custom message with time
echo "Script started at: $(date +'%H:%M:%S on %d-%m-%Y')"
# Output: Script started at: 10:15:20 on 27-05-2025
