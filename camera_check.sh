#!/usr/bin/env bash
set -e

echo "=== VIDEO DEVICES ==="
ls -l /dev/video* 2>/dev/null ||echo "No /dev/video* devices found"
echo

echo "=== V4L2 DEVICES ==="
v4l2-ctl --list-devices 2>/dev/null || echo "v4l2-ctl not installed or no camera found"
echo

echo "=== CAMERA RELATED DMESG ==="
v4l2-ctl --list-devices 2>/dev/null || echo "v4l2-ctl not installed or no camera found"
echo 

echo "=== CAMERA RELATED DMESG ==="
dmesg -T | grep -iE "camera|videa|v4l2|uvc|csi|isp" | tail -n 100 || true

