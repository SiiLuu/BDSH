#!/bin/sh

check_args () {
    if [ "$1" = "-h" -a -z "$2" ];then
        echo "Usage: ./bdsh [OPTION]... [COMMAND] [REQUEST]"
        echo "OPTION:"
        echo "  -h				  display usage"
        echo "  -f FILE			json database file"
        echo "  -j                json formated output for select command"
        exit 0
    elif [ -z "$4" -o "$1" != "-f" ];then
        echo "Usage: ./bdsh [OPTION]... [COMMAND] [REQUEST]"
        echo "OPTION:"
        echo "  -h				  display usage"
        echo "  -f FILE			json database file"
        echo "  -j                json formated output for select command"
        exit 1
    fi
}

main () {
    check_args "$@"
}

main "$@"

####ERRORS
##ARGV < 5
##PAS DE -f
##PAS FICHIER JSON APRES -f
##SI ARGV 3 != create/insert/select/update/delete/describe
##REGARDER QUE DESC_$TABLE ET DATA_$TABLE EXISTENT
##PAS DE '=' ENTRE LE NOM ET LA VALEUR DE CHAQUE VARIABLE