#!/usr/bin/env bash
set -e

mkdir -p logs
timestamp=$(date +"%Y%m%d_%H%M%S")
logfile="logs/validation_${timestamp}.log"

for script in linux-testkit/*.sh; do
	echo 
	echo "===== RUNNING $script ====="
	bash "$"
done |tee "$logfile"

