#https://www.jianshu.com/p/55be9d4fc033

cmake_minimum_required(VERSION 3.0)
project(runPy)

message("CMAKE_SOURCE_DIR= ${CMAKE_SOURCE_DIR}")
message("CMAKE_BINARY_DIR= ${CMAKE_BINARY_DIR}")
message("PROJECT_SOURCE_DIR= ${PROJECT_SOURCE_DIR}")
message("PROJECT_BINARY_DIR= ${PROJECT_BINARY_DIR}")


# Use just one of these:
# GCC/clang:
set(PYBIND11_CPP_STANDARD -std=c++11)
set(PYBIND11_CPP_STANDARD -std=c++14)
set(PYBIND11_CPP_STANDARD -std=c++1z) # Experimental C++17 support

# MSVC:
#set(PYBIND11_CPP_STANDARD /std:c++14)
#set(PYBIND11_CPP_STANDARD /std:c++latest) # Enables some MSVC C++17 features


message("CMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}")


add_subdirectory(pybind11src)
set(PYBIND11_PYTHON_VERSION 3.7)
message("PYBIND11_PYTHON_VERSION =${PYBIND11_PYTHON_VERSION}")


file(GLOB SOURCES "src/*.cpp")

add_executable(runPy ${SOURCES})

target_link_libraries(runPy PRIVATE pybind11::embed)




