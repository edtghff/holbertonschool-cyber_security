#!/bin/bash

grep "useradd" auth.log | awk '{print $NF}' | sort | uniq | paste -sd,
