#!/bin/bash
sh ./clean_mem.sh ;
exec gunicorn keep_alive:app --bind 0.0.0.0:8080 &
python3 main.py --everyday --privacy --error --telegram --dont-check-for-updates --currency INR --dont-check-internet --skip-shopping --virtual-display;
