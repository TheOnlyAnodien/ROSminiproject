cmake_minimum_required(VERSION 2.8.3)
project(agitr)

find_package(catkin REQUIRED COMPONENTS 
	roscpp
	geometry_msgs 
	turtlesim 
	message_generation
	)

add_message_files( FILES Pause.msg)

generate_messages( DEPENDENCIES agitr)



add_executable(hello hello.cpp)
add_executable(pubvel pubvel_backup.cpp)
add_executable(subpose subpose.cpp)
add_executable(rotate rotate.cpp)
add_executable(reverse reverse.cpp)
add_executable(border border.cpp)
add_executable(new_direction new_direction.cpp)

target_link_libraries(hello ${catkin_LIBRARIES})
target_link_libraries(pubvel ${catkin_LIBRARIES})
target_link_libraries(subpose ${catkin_LIBRARIES})
target_link_libraries(rotate ${catkin_LIBRARIES})
target_link_libraries(reverse ${catkin_LIBRARIES})
target_link_libraries(border ${catkin_LIBRARIES})
target_link_libraries(new_direction ${catkin_LIBRARIES})

catkin_package( CATKIN_DEPENDS 
	roscpp 
	geometry_msgs 
	turtlesim 
	message_runtime
)
