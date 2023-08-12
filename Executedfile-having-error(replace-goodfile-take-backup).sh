#!/bin/bash

script_to_check="/path/to/your/script.sh"
backup_dir="/path/to/backup"

# Check if the script has errors
has_errors() {
    if ! bash -n "$1"; then
        return 0
    fi
    return 1
}

if has_errors "$script_to_check"; then
    echo "Script has errors. Replacing with backup..."
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_script="${backup_dir}/backup_script_${timestamp}.sh"

    cp "$script_to_check" "$backup_script"
    echo "Backup script created: $backup_script"

    # Restore from the last known good backup
    if [ -f "${backup_dir}/last_good_script.sh" ]; then
        cp "${backup_dir}/last_good_script.sh" "$script_to_check"
        echo "Restored from last known good backup."
    else
        echo "No last known good backup found."
    fi
else
    echo "Script does not have errors."
fi
