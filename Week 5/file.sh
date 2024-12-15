#!/bin/bash

echo "File System Management Script"
echo "1. Create Directory"
echo "2. Set Directory Permissions"
echo "3. Check Disk Usage"
echo "4. Exit"

read -p "Choose an option: " choice

case $choice in
    1)
        read -p "Enter directory path to create: " dirpath
        mkdir -p "$dirpath" && echo "Directory $dirpath created successfully." || echo "Failed to create directory."
        ;;
    2)
        read -p "Enter directory path: " dirpath
        read -p "Enter permissions (e.g., 755): " perms
        chmod "$perms" "$dirpath" && echo "Permissions set successfully on $dirpath." || echo "Failed to set permissions."
        ;;
    3)
        echo "Disk Usage:"
        df -h
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option."
        ;;
esac
