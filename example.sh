#!/bin/bash

# example.sh--Shows how the bash inturprets the commandline
# Accessing exit status
ls -l
exit_status=$?
echo "Exit status: $exit_status"

# Accessing command-line arguments
echo "Script name: example.sh: $0"
echo "Number of arguments: $#"
echo "Arguments: $@"
echo "First argument: $1"
echo "Second argument: $2"
