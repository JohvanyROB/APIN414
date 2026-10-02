#!/bin/bash

sudo apt update -y

# Install project's dependencies 
sudo apt -y install python3-colcon-common-extensions
sudo apt -y install python3-pip
sudo apt -y install ros-galactic-gazebo-ros-pkgs ros-galactic-tf-transformations ros-galactic-tf2-tools ros-galactic-teleop-twist-keyboard ros-galactic-xacro

pip3 install transforms3d

source /opt/ros/galactic/setup.bash
cd ~/ros2_ws && colcon build --symlink-install

bashrc="$HOME/.bashrc"
ros_setup="source ~/ros2_ws/install/setup.bash"
gazebo_setup="source /usr/share/gazebo/setup.sh"

if ! grep -Fxq "$ros_setup" "$bashrc" || ! grep -Fxq "$gazebo_setup" "$bashrc"; then
  printf '%s\n%s\n' "$ros_setup" "$gazebo_setup" >> "$bashrc"
fi
