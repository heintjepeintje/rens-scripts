pkill screen
screen -dmS rens-bringup bash rens-scripts/launch_bringup.sh
screen -dmS rens-controller bash rens-scripts/launch_controller.sh
screen -dmS rens-slam bash rens-scripts/launch_slam.sh
screen -ls