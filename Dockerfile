# ROS Noetic with Gazebo and Python support
FROM ros:noetic

# Install Gazebo, ROS packages, and catkin tools
RUN apt-get update && \
    apt-get install -y gazebo11 ros-noetic-gazebo-ros-pkgs ros-noetic-gazebo-ros-control \
    python3-pip python3-catkin-tools ros-noetic-catkin ros-noetic-xacro && \
    rm -rf /var/lib/apt/lists/*

# Create a catkin workspace
RUN mkdir -p /root/catkin_ws/src
WORKDIR /root/catkin_ws

# (Do not run catkin_make here; build after container starts)

# Set up entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
