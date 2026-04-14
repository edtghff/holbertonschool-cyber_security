#!/bin/bash

grep -oE 'sshd|apache2|nginx|vsftpd' $1 | sort | uniq -c | sort -nr
