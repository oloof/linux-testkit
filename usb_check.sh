#!/usr/bin/env bash
set -e
echo "=== USB DEVICES ==="
echo

echo "=== USB KERNEL LOGS ==="
dmesg -T | grep -iE "usb|xhci|type.c|hid" | tail -n 100 || true

