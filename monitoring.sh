#!/bin/bash

# System monitoring script
threshold=90

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
if (( $(echo "$cpu_usage > $threshold" | bc -l) )); then
    echo "High CPU usage detected: ${cpu_usage}%"
    timestamp=$(date +%Y%m%d%H%M%S)
    touch "Aravind-${timestamp}"
    # Add alerting mechanism here
fi
