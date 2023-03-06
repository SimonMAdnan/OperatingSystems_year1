#!/bin/bash
#chmod u+x Commands.sh (to make executeable using ./Commands.sh)

List_Files(){
    #fucntions 
    echo ""
        echo "The Listed Files:"
        ls
        echo ""
}

Show_Disk_Space(){
    echo ""
        echo "The Free Space Available:"
        df
        echo ""
}

Show_System_Path(){
    echo ""
        echo "The system path"
        pwd
        echo ""
}

Display_Command_History(){
    echo ""
        echo "This is the command history:"
        history 5
        echo ""

            
}

Backup_Files(){
    echo ""
        
        echo "Choose a file to backup"
        ls
        echo ""
}   




menu(){
echo -ne "
                  * Bash Commands *                       
My First Menu
1. List Files
2. Show free disk space
3. Show system path
4. Display command history
5. Backup files
6. Exit
Choose an option:
"
        read a
        case $a in
	        1) List_Files ; menu ;;
	        2) Show_Disk_Space ; menu ;;
	        3) Show_System_Path ; menu ;;
	        4) Display_Command_History ; menu ;;
	        5) Backup_Files ; menu ;;
			6) exit 0 ;;
			*)echo -e "$a is not an option please try again"; menu;;
        esac
}
menu