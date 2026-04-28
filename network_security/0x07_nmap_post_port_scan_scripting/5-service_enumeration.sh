#!/bin/bash
nmap -A --script banner,ssl-enum-ciphers,default,smb-enum-domains $1 | tee service_enumeration_results.txt
