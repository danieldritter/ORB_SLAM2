#!/bin/sh

xterm -title "roscore" -hold -e roscore &
sleep 7
xterm -title "gscam_setup" -hold -e 'roscd gscam; export GSCAM_CONFIG="v4l2src device=/dev/video0 ! video/x-raw-rgb,framerate=30/1 ! ffmpegcolorspace"; rosrun gscam gscam' &

xterm -title "ORB_SLAM2" -hold -e rosrun ORB_SLAM2 Mono /home/robotdog/ORB_SLAM2/Vocabulary/ORBvoc.txt /home/robotdog/ORB_SLAM2/Examples/ROS/ORB_SLAM2/Asus.yaml 1 1 &
