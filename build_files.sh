#!/bin/bash

if ! command -v pip &>/dev/null; then
	echo "pip not found, installing pip..."
	sudo apt update
	sudo apt install python3-pip
fi

pip install -r requirements.txt

python3.9 manage.py collectstatic
