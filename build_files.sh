#!/bin/bash

# Full path to pip executable
PIP_EXEC=/usr/bin/pip

# Check if pip is installed
if ! command -v $PIP_EXEC &>/dev/null; then
	echo "pip not found, installing pip..."
	# Install pip
	sudo apt update
	sudo apt install python3-pip
fi

# Full path to python executable
PYTHON_EXEC=/usr/bin/python3.9

# Install dependencies from requirements.txt
$PIP_EXEC install -r requirements.txt

# Collect static files
$PYTHON_EXEC manage.py collectstatic
