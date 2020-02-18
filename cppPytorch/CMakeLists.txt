#https://www.jianshu.com/p/55be9d4fc033

# First, depending on the OS
# we have to download the mac os version of pytorch: https://download.pytorch.org/libtorch/nightly/cpu/libtorch-macos-latest.zip
# or to download the Linux version: https://download.pytorch.org/libtorch/nightly/cpu/libtorch-shared-with-deps-latest.zip

#Second,
# run option 1 is one step in the termal : cmake -D CMAKE_PREFIX_PATH=/Users/yuyang01/Documents/coding/cppPytorch/libtorch/ ..
# run option 2: 
   #step 1: set(Torch_DIR "${CMAKE_SOURCE_DIR}/libtorch/share/cmake/Torch")
   #step 2: cmake .. 
   
 # in both options, we have to declare the absolute path of pytorch.
 # reference: https://github.com/pytorch/pytorch/issues/12449
   
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(example-app)

message("CMAKE_CURRENT_LIST_FILE=${CMAKE_CURRENT_LIST_FILE}")
message("CMAKE_BINARY_DIR=${CMAKE_BINARY_DIR}")
message("CMAKE_SOURCE_DIR=${CMAKE_SOURCE_DIR}")
message("CMAKE_CURRENT_BINARY_DIR=${CMAKE_CURRENT_BINARY_DIR}")


set(Torch_DIR "${CMAKE_SOURCE_DIR}/libtorch/share/cmake/Torch")
find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

file(GLOB SOURCES "src/*.cpp")
add_executable(example-app ${SOURCES})

target_link_libraries(example-app "${TORCH_LIBRARIES}")
set_property(TARGET example-app PROPERTY CXX_STANDARD 14)




# The following code block is suggested to be used on Windows.
# According to https://github.com/pytorch/pytorch/issues/25457,
# the DLLs need to be copied to avoid memory errors.
if (MSVC)
  file(GLOB TORCH_DLLS "${TORCH_INSTALL_PREFIX}/lib/*.dll")
  add_custom_command(TARGET example-app
                     POST_BUILD
                     COMMAND ${CMAKE_COMMAND} -E copy_if_different
                     ${TORCH_DLLS}
                     $<TARGET_FILE_DIR:example-app>)
endif (MSVC)




