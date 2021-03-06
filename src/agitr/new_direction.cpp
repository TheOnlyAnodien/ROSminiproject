// This program publishes randomly/generated velocity
// messages for Turtlesim
#include <ros/ros.h>
#include <geometry_msgs/Twist.h> // For geometry_msgs::Twist
#include <stdlib.h> // For rand() and RAND_MAX
#include <turtlesim/Pose.h>
#include <agitr/Pause.h>


void newDirection(const turtlesim::Pose& msgIn){
	ros::NodeHandle nh;	
	ros::Publisher pubNewVel = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 		1000);	
	
	agitr::Pause msgOut;
	double inx = msgIn.x;
	double iny = msgIn.y;
	// At first I wanted to set the values to five, and wanted to write a code, that makes
	// the robot stop whenever the values reach 5. But the values are never exactly 5
	// because of the double thingy. I don't know how to set percision so I came up with 			this
	// variation :)
	
	ros::Rate rate(2);
	while(ros::ok()) {
		if (inx<=8 || iny<=8 || inx>=-8 || iny>=-8){
		msgOut.x=6;
		pubNewVel.publish(msgOut);
		ROS_INFO_STREAM(" I publish: asd");
		}
		else {
		msgOut.x=0;
		pubNewVel.publish(msgOut);
		ROS_INFO_STREAM(" I publish: qwe");
		}

		// Wait until it`s time for anouther iteration (delaying)
		rate.sleep();
	}
	}

int main (int argc, char **argv) {
	// Initialize the ROS system and becoming a node
	ros::init(argc, argv, "publish_new_velocity");
	ros::NodeHandle nh;
	
	ros::Subscriber sub = nh.subscribe("turtle1/pose", 1000, &newDirection);
	// Seed the random number generator
	ros::spin();
}

