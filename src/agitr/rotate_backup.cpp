
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main (int argc, char **argv) {
	ros::init(argc, argv, "rotate");
	ros::NodeHandle nh;
	
	ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
	
	ros::Rate rate(1);
	int x = 0;
	while (x <= 1){
		geometry_msgs::Twist msg;
		
		msg.angular.z = 1;

		pub.publish(msg);

		++x;
		rate.sleep();
		 
	}
}

