#!/bin/bash

grep "useradd" auth.log | grep -oE "name=[^,]*" | cut -d= -f2 | sort | uniq | paste -sd,
