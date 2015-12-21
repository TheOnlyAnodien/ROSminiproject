// This program publishes randomly/generated velocity
// messages for Turtlesim
#include <ros/ros.h>
#include <geometry_msgs/Twist.h> // For geometry_msgs::Twist

int main (int argc, char **argv) {
	// Initialize the ROS system and becoming a node
	ros::init(argc, argv, "rotate");
	ros::NodeHandle nh;
	
	// Create a publisher object
	ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
	
	ros::Rate rate(2);
	int x = 0;
	while (x < 2){
		geometry_msgs::Twist msg;
		
		msg.angular.z = 4;
		pub.publish(msg);
		x = x+1;
		rate.sleep() 
	}
	
	// Wait until it`s time for anouther iteration (delaying)
	//ros::spinOnce();
	}

