#!/usr/bin/env bash
INFO_FILE="$(dirname "$0")/../Dariga_Shaikhiyeva_info.txt"

echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Shaikhiyeva"
echo "Surname: Dariga"
echo "Group: IT2-2314"
echo "Student ID: 38340"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -sr)"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used of " $2 " (" $5 ")"}')"
echo "Memory Usage: $(free -h 2>/dev/null | awk '/Mem:/ {print $3 " used of " $2}')"
echo "=============================="

if [ -f "$INFO_FILE" ]; then
  echo "Student information file exists."
else
  echo "Student information file does not exist."
fi
