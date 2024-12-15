#!/bin/bash

echo "System Performance Monitoring Script"
report_file="system_report_$(date +%Y%m%d_%H%M%S).txt"

echo "Generating system performance report..."
echo "CPU and Memory Usage:" > "$report_file"
top -b -n1 | head -20 >> "$report_file"
echo "Disk Usage:" >> "$report_file"
df -h >> "$report_file"

echo "Report saved to $report_file"
echo "Would you like to view the report? (y/n)"
read -p "Enter choice: " view_choice

if [[ "$view_choice" == "y" || "$view_choice" == "Y" ]]; then
    cat "$report_file"
else
    echo "Report generation complete. File saved as $report_file."
fi
