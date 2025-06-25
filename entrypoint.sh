#!/bin/bash
set -e
# Source ROS setup
source /opt/ros/noetic/setup.bash
# Source catkin workspace if built
if [ -f /root/catkin_ws/devel/setup.bash ]; then
    source /root/catkin_ws/devel/setup.bash
fi
exec "$@"
