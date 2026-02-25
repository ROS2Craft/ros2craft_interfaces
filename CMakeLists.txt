cmake_minimum_required(VERSION 3.8)
project(ros2craft_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

set(CMAKE_CXX_STANDARD 17)

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(std_srvs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

# messages
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/MCRawRobotData.msg"
  "srv/FactoryReq.srv"
  DEPENDENCIES std_msgs std_srvs geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

# rosidl_get_typesupport_target(cpp_typesupport_target ${PROJECT_NAME} rosidl_typesupport_cpp)

ament_package()
