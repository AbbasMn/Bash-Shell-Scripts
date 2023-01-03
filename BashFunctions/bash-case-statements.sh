#!/bin/bash
function case_statements() {
    VAR=@1
    case $VAR in
        start|START) 
            start.sh
            ;;
        stop|STOP) 
            kill start.sh
            ;;
        *) 
            echo "$0 start|stop"; exit 1
            ;;
    esac
    exit 0
}

function case_statements_user_entry() {
    read  -p "Enter Y/N" ANSWERE
    case $ANSWERE in
        [yY]|[yY][eE][sS]) 
            echo "You answered Yes"
            ;;

        [yY]|[yY][eE][sS]) 
            echo "You answered Yes"
            ;;

        [nN]|[nN][oO]) 
            echo "You answered No"
            ;;
            
        *) 
            echo "Invalid answere."
            ;;
    esac
    exit 0
}