#!/bin/bash

tail -1000 auth.log | grep "Accepted password" | awk '{print $9}' | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'
