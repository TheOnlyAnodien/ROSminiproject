# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "agitr: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iagitr:/home/viki/ros/src/agitr/msg;-Iagitr:/home/viki/ros/src/agitr/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(agitr_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/viki/ros/src/agitr/msg/Pause.msg" NAME_WE)
add_custom_target(_agitr_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agitr" "/home/viki/ros/src/agitr/msg/Pause.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(agitr
  "/home/viki/ros/src/agitr/msg/Pause.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agitr
)

### Generating Services

### Generating Module File
_generate_module_cpp(agitr
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agitr
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(agitr_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(agitr_generate_messages agitr_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/ros/src/agitr/msg/Pause.msg" NAME_WE)
add_dependencies(agitr_generate_messages_cpp _agitr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agitr_gencpp)
add_dependencies(agitr_gencpp agitr_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agitr_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(agitr
  "/home/viki/ros/src/agitr/msg/Pause.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agitr
)

### Generating Services

### Generating Module File
_generate_module_lisp(agitr
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agitr
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(agitr_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(agitr_generate_messages agitr_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/ros/src/agitr/msg/Pause.msg" NAME_WE)
add_dependencies(agitr_generate_messages_lisp _agitr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agitr_genlisp)
add_dependencies(agitr_genlisp agitr_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agitr_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(agitr
  "/home/viki/ros/src/agitr/msg/Pause.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agitr
)

### Generating Services

### Generating Module File
_generate_module_py(agitr
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agitr
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(agitr_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(agitr_generate_messages agitr_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/ros/src/agitr/msg/Pause.msg" NAME_WE)
add_dependencies(agitr_generate_messages_py _agitr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agitr_genpy)
add_dependencies(agitr_genpy agitr_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agitr_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agitr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agitr
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(agitr_generate_messages_cpp agitr_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agitr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agitr
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(agitr_generate_messages_lisp agitr_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agitr)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agitr\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agitr
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(agitr_generate_messages_py agitr_generate_messages_py)
