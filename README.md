# rens-scripts

A collection of shell scripts for automating the launch of ROS2 components for a Linorobot2 robotics project.

## Overview

This repository contains convenience scripts to simplify the startup process of various ROS2 nodes and components needed for robot operation. The scripts use GNU Screen to run multiple ROS2 processes in detached sessions, making it easy to manage and monitor different components of the robot system.

## Contents

- **`launch_all.sh`** - Master script that launches all robot components simultaneously
- **`launch_bringup.sh`** - Launches the Linorobot2 bringup configuration
- **`launch_controller.sh`** - Launches the teleoperation controller (PS3 joystick)
- **`launch_slam.sh`** - Launches the SLAM (Simultaneous Localization and Mapping) navigation

## Prerequisites

- ROS2 (Robot Operating System 2)
- GNU Screen
- Linorobot2 packages
- teleop_twist_joy package

## Usage

### Launch All Components

To start all robot systems at once:

```bash
./launch_all.sh
```

This script will:
1. Kill any existing screen sessions
2. Start the robot bringup in a detached screen session named `rens-bringup`
3. Start the controller in a detached screen session named `rens-controller`
4. Start SLAM navigation in a detached screen session named `rens-slam`
5. Display all active screen sessions

### Launch Individual Components

You can also launch components individually:

```bash
# Launch robot bringup only
./launch_bringup. sh

# Launch controller only
./launch_controller.sh

# Launch SLAM only
./launch_slam.sh
```

## Managing Screen Sessions

To view running sessions: 
```bash
screen -ls
```

To attach to a specific session:
```bash
screen -r rens-bringup
# or
screen -r rens-controller
# or
screen -r rens-slam
```

To detach from a session:  Press `Ctrl+A` then `D`

To kill a specific session: 
```bash
screen -X -S rens-bringup quit
```

## Project Context

This project is part of a school assignment involving robotics and ROS2. The scripts automate the deployment of a Linorobot2 platform with SLAM capabilities and joystick control. 

## License

This is a school project. 
```
