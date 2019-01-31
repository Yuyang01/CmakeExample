#https://www.jianshu.com/p/55be9d4fc033

cmake_minimum_required(VERSION 2.8.9)
project(testSuperLU)

message("Trying to compile the solver...")
message("CMAKE_SOURCE_DIR= ${CMAKE_SOURCE_DIR}")
message("CMAKE_BINARY_DIR= ${CMAKE_BINARY_DIR}")
message("PROJECT_SOURCE_DIR= ${PROJECT_SOURCE_DIR}")
message("PROJECT_BINARY_DIR= ${PROJECT_BINARY_DIR}")

#Bring the headers, such as Student.h into the project
#include_directories(/usr/local/include/eigen3/)
#Can manually add the sources using the set command as follows:
#set(SOURCES src/mainapp.cpp src/Student.cpp)

find_package(Armadillo REQUIRED)
include_directories(testSuperLU INTERFACE ${ARMADILLO_INCLUDE_DIRS})
message("ARMADILLO_INCLUDE_DIRS= ${ARMADILLO_INCLUDE_DIRS}")
#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")

add_executable(testSuperLU ${SOURCES})

#find_package(Armadillo REQUIRED)
#target_include_directories(testSuperLU INTERFACE ${ARMADILLO_INCLUDE_DIRS})
#message("ARMADILLO_INCLUDE_DIRS= ${ARMADILLO_INCLUDE_DIRS}")
target_link_libraries(testSuperLU ${ARMADILLO_LIBRARIES})
