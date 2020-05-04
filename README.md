# linux-utils
# Top 5 biggest files
find $PWD -type f -exec du -Sh {} + | sort -rh | head -n 5
