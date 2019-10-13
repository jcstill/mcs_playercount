#!/bin/bash

players_in="$(cat /home/jacob/MC/logs/latest.log | grep -h "logged" | cut -d" " -f4 | cut -d"[" -f1 | wc -l)"
players_out="$(cat /home/jacob/MC/logs/latest.log | grep -h "Disconnected" | cut -d" " -f4 | cut -d"[" -f1 | wc -l)"

players="$(bc <<< "$players_in - $players_out")"

echo "Players Online: $players"
