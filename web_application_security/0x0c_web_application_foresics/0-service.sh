#!/bin/bash

grep sshd auth.log | cut -d' ' -f5 | sort | uniq -c | sort -nr
