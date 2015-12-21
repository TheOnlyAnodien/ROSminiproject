// This program subsribes to turtle1/cmd_vel and republishes
// on turtle1/cmd_vel_reversed with signs inverted

#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <agitr/Pause.h>

ros::Publisher *pubPtr;

void poseReciever(const turtlesim::Pose& msgIn){
	agitr::Pause msgOut;
	double inx = msgIn.x;
	double iny = msgIn.y;
	// At first I wanted to set the values to five, and wanted to write a code, that makes
	// the robot stop whenever the values reach 5. But the values are never exactly 5
	// because of the double thingy. I don't know how to set percision so I came up with this
	// variation :)
	if (inx<=8 || iny<=8 || inx>=-8 || iny>=-8){
		msgOut.x=1;
		pubPtr-> publish(msgOut);
		ROS_INFO_STREAM(" I publish: ");
		}
	else {
		msgOut.x=0;
		pubPtr-> publish(msgOut);
		ROS_INFO_STREAM(" I publish: ");
		}
	}

int main (int argc, char **argv){
	ros::init(argc, argv, "border");
	ros::NodeHandle nh;

	pubPtr = new ros::Publisher(nh.advertise<agitr::Pause>
	("agitr/stopTurtle", 1000));

	ros::Subscriber sub = nh.subscribe("turtlesim/Pose", 1000, &poseReciever);
	ros::spin();
	ROS_INFO_STREAM(" Is this the only message? ");


	}
