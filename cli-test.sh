#!/bin/bash

## Simple bash CLI tool boilerplate

usage() {
    cat <<EOF
Usage: cli-test.sh <action>
Supported actions:
    hello
    test
EOF
}

perform_action() {
    set -e
    case "$1" in
    hello)
        echo "hi!"
        ;;
    test)
       echo "running this command from the $(pwd) dir"
        ;;
    help)
        usage
        exit
        ;;
    *)
        ## TODO: do some sort of check if $1 == $null and say there needs to be a command
        echo "$1 is not a valid command, try help for cli usage"
        ;;
    esac
}

perform_action "$1"

