#!/bin/bash
# Count distinct attacker IPs (unique IP addresses)

cut -d ' ' -f1 $1 | sort -u | wc -l
