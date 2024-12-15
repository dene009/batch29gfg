#! /bin/bash
echo "Manupulate Users and Groups"
echo "---------------------------"

list_users(){
    echo "List of Users:"
    cat /etc/passwd | cut -d: -f1
}

add_user(){
    echo "Adding new user..."
    read -p "Enter username: " username
    sudo useradd $username >> access.log 2>> error.log 
    echo "User added successfully."
    read -p "Enter password: " password
    sudo chpasswd $username >> access.log 2>> error.log
    echo "Password set successfully."
}

delete_user(){
    echo "Deleting user..."
    read -p "Enter username: " username
    sudo deluser -r $username >> access.log 2>> error.log
    echo "User deleted successfully."
}



while true; do
    echo "Menu Options:"
    echo "0. List Users" 
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Add Group"
    echo "4. Delete Group"
    echo "5. Add User to Group"
    echo "6. Delete User from Group"
    echo "7. Back to Main Menu"
    echo "8. Exit"
    echo "---------------------------"
    read -p "Enter your choice: " choice
    case $choice in
    0) list_users ;;
    1) add_user ;;
    2) delete_user ;;
    3) add_group ;;
    4) delete_group ;;
    5) add_user_to_group ;;
    6) delete_user_from_group ;;
    7) main_menu ;;
    8) 
        exit 0
        echo "Bye.." 
        ;;
    *) echo "Invalid choice. Please try again." ;;
    esac
done