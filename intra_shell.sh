#!/bin/bash

INTRA_URL="intra.42.fr"

PROFILE="https://profile"
PROJECTS="https://projects"
META="https://meta"

HELP_MESSAGE=$(echo "intra_shell --> A shell based solution to access 42 school's intranet

-g		: Access to the Holy Graph
-h		: Help for intra_shell
-l [login]	: Access to the profile you specified
-p		: Access to the project page
-s		: Access to the manage slots page
-c		: Access to the cluster page
No Parameters	: Access to intra main page")

while getopts ":l:spghc" option; do
	case $option in
		l) 
			if [ -z "$OPTARG" ]; then
				echo "-l option needs a login to open"
				exit 1
			fi
				python3 -m webbrowser "$PROFILE.$INTRA_URL/users/$OPTARG/" ;;
		s) python3 -m webbrowser "$PROFILE.$INTRA_URL/slots/" ;;
		p) python3 -m webbrowser "$PROJECTS.$INTRA_URL/" ;;
		g) python3 -m webbrowser "$PROJECTS.$INTRA_URL/projects/graph/" ;;
		h) echo "$HELP_MESSAGE" ;;
		c) python3 -m webbrowser "$META.$INTRA_URL/clusters";;
		*) python3 -m webbrowser "$PROFILE.$INTRA_URL/" ;;
	esac
done

if [ $OPTIND -eq 1 ]; then
	python3 -m webbrowser "$PROFILE.$INTRA_URL"
fi
