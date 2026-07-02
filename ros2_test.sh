#!/usr/bin/env bash
set -e 
echo "=== ROS ENVIRONMENT ==="
printenv | grep -E "ROS|AMENT|COLCON" || true
echo

echo "=== ROS VERSION ==="
ros2 --help>/dev/null 2>&1 && echo "ros2 command found" || echo "ros2 command not found"

echo

echo "=== ROS TOPICS ==="
ros2 topic list 2>/dev/null || echo "NO ROS daemon/session available"

