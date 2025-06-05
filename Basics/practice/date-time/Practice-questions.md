1. Create a folder with today’s date
Hint: Use mkdir and date +'%Y-%m-%d'

2. Log the start and end time of a script
Hint: Use date +'%T' and echo

3. Add a timestamp to a filename
Hint: Use date +'%Y%m%d_%H%M%S'

4. Delete files older than 5 days
Hint: Use find -mtime +5 -exec rm

5. Wait until a specific time (e.g., 10:30 AM)
Hint: Use a while loop and date +%H:%M

6. Show the day of the week
Hint: Use date +%A

7. Display yesterday’s date in DD-MM-YYYY format
Hint: Use date -d "yesterday" +'%d-%m-%Y'

8. Add a timestamp to a log message
Hint: Use echo "$(date)" >> logfile.txt

9. Create a system report with the date in the filename
Hint: Use date +'%d-%b-%Y' and commands like uptime, free, df

10. Convert a hardcoded Unix timestamp to a readable format
Hint: Use date -d @<timestamp> +'%d-%m-%Y %H:%M:%S'