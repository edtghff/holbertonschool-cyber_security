#!/bin/bash
printf "%s" "$(lsb_release -i | cut -d: -f2 | tr -d '[:space:]')
