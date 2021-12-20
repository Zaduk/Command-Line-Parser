

project(lab4)
cmake_minimum_required(VERSION 3.21.4)
set(CMAKE_CXX_STANDARD 17)
add_executable(${PROJECT_NAME} Shape.cpp ShapeList.cpp ShapeNode.cpp
                GroupList.cpp GroupNode.cpp Parser.cpp)


