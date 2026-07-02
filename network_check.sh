#!/usr/bin env bash
set -e


echo "=== NETWORK INTERFACES ==="
ip a
echo

echo "=== ROUTES ==="
ip route
echo

echo "=== DNS ==="
resolvectl status 2>/dev/null || cat /etc/resolv.conf
echo

echo "=== PING TEST ==="
ping -c 3 8.8.8.8 || true
ping -c 3 google.com || true


