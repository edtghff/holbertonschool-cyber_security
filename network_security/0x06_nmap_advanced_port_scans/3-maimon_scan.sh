#!/bin/bash
sudo nmap -vvv -sM -Pn -p http,https,ftp,ssh,telnet $1
