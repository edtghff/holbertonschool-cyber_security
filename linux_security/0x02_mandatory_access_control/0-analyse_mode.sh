#!/bin/bash
echo "$(sestatus | grep 'SELinux status')"
