# @author: xihua.lxh@alibaba-inc.com
# @date:   2016/10/24
# @brief:  orbslam2 running scripts

# 1. run orbslam2 with rgbd_dataset
#./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt Examples/Monocular/TUM1.yaml /mnt/hgfs/database/rgbd_dataset_frei/rgbd_dataset_freiburg1_desk
#./Examples/RGB-D/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/TUM1.yaml /mnt/hgfs/database/rgbd_dataset_frei/rgbd_dataset_freiburg1_desk /mnt/hgfs/database/rgbd_dataset_frei/rgbd_dataset_freiburg1_desk/associations.txt

# 2. run orbslam2 with ROS
#01. input from pepper
gnome-terminal -x bash -c "roscore"
sleep 3
gnome-terminal -x bash -c "rosrun ORB_SLAM2 RGBD Vocabulary/ORBvoc.txt Examples/RGB-D/TUM_pepper.yaml"
sleep 15
gnome-terminal -x bash -c "cd /mnt/hgfs/database/ros_bags && rosbag play --clock 2016-11-04-16-34-07.bag"
#gnome-terminal -x bash -c "cd /mnt/hgfs/database/ros_bags && rosbag play --clock 2016-11-05-16-26-12.bag"

#02. input form xtion
#gnome-terminal -x bash -c "roscore"
#sleep 3
#gnome-terminal -x bash -c "roslaunch openni2_launch openni2.launch"
##sleep 3
##gnome-terminal -x bash -c "rosrun image_view image_view image:=/camera/rgb/image_raw"
##gnome-terminal -x bash -c "rosrun image_view image_view image:=/camera/depth/image_raw"
#sleep 3
#gnome-terminal -x bash -c "rosrun ORB_SLAM2 RGBD Vocabulary/ORBvoc.txt Examples/RGB-D/TUM_xtion.yaml"
