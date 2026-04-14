#!/bin/bash

grep -i "iptables" auth.log | grep -i "A INPUT" | wc -l
