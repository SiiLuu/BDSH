#!/bin/sh

check_args () {
    value="$2"
    value=`echo "$2" | cut -d "." -f2`
    if [ "$1" = "-h" -a -z "$2" ];then
        echo "Usage: ./bdsh [OPTION]... [COMMAND] [REQUEST]"
        echo "OPTION:"
        echo "  -h				display usage"
        echo "  -f FILE			json database file"
        echo "  -j                json formated output for select command"
        exit 0
    elif [ -z "$4" -o "$1" != "-f" -o "$value" != "json" -o \
            "$3" != "create" -a  "$3" != "insert" -a "$3" != "select" -a \
            "$3" != "update" -a "$3" != "delete" -a "$3" != "describe" ];then
        echo "Usage: ./bdsh [OPTION]... [COMMAND] [REQUEST]"
        echo "OPTION:"
        echo "  -h				display usage"
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
##REGARDER QUE DESC_$TABLE ET DATA_$TABLE EXISTENT
##PAS DE '=' ENTRE LE NOM ET LA VALEUR DE CHAQUE VARIABLE