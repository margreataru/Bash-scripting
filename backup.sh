#!/bin/bash
backup_dir="/root/Aravind"
source_dir="/root/Hello"
timestamp=$(date +%Y%m%d%H%M%S)
Backupfile="aravind_"${timestamp}".tar.gz"
tar -cvzf "${backup_dir}/${Backupfile}" "${source_dir}"
