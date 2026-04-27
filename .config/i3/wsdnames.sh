#!/bin/bash
pkill -f "python3.*wsdnames.py" || true
python3 /home/teymur/.config/i3/wsdnames.py &
