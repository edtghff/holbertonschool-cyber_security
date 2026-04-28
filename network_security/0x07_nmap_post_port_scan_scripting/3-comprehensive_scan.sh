#!/bin/bash
nmap --script http-vuln-cve2017-5638,ssl-enum-ciphers,ftp-anon -p21,80,443 $1 | tee comprehensive_scan_results.txt
