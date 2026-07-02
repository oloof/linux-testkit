#!/usr/bin/env bash

set -e

echo "=== SYSTEM INFO ==="
uname -a
echo

echo "=== OS RELEASE ==="
cat /etc/os-relese || true
echo

echo "=== CPU ==="
lscpu || true
echo

echo "=== MEMORY ==="
free -h
echo

echo "=== STORAGE ==="
lsblk
echo

echo "=== FAILED SERVICES ==="
systemctl --failed || true

