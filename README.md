# Drone Swarm Simulation

This package contains launch files and Python nodes for simulating a basic drone swarm in Gazebo using ROS.
Only 1 agent in first commit, cannot get simulation display working.

## Usage

1. Build the Docker image:
   ```bash
   docker-compose build
   ```
2. Start the container:
   ```bash
   docker-compose up -d
   docker exec -it dronesim bash
   ```
3. Inside the container, build the workspace:
   ```bash
   cd /root/catkin_ws
   catkin_make
   source devel/setup.bash
   ```
4. Create and run the drone swarm simulation (instructions will follow as files are added).
