#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <length>"
	exit 1
fi

length=$1

if ! [[ "$length" =~ ^[a-zA-Z0-9]+$ ]]; then
        echo "Error: Argument must be alphanumeric"
        exit 1
fi

if ! [[ "$length" =~ ^[0-9]+$ ]]; then
	echo "Error: The length must be a number"
	exit 1
fi

password=$(</dev/urandom tr -dc 'a-zA-Z0-9' | head -c "$length")
echo "$password"
