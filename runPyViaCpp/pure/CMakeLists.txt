#https://www.jianshu.com/p/55be9d4fc033

cmake_minimum_required(VERSION 3.0)
project(runPy)

message("Trying to compile the solver...")
message("CMAKE_SOURCE_DIR= ${CMAKE_SOURCE_DIR}")
message("CMAKE_BINARY_DIR= ${CMAKE_BINARY_DIR}")
message("PROJECT_SOURCE_DIR= ${PROJECT_SOURCE_DIR}")
message("PROJECT_BINARY_DIR= ${PROJECT_BINARY_DIR}")



SET(GCC_COVERAGE_COMPILE_FLAGS "-Wno-unused-result -Wsign-compare -Wunreachable-code -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes")
SET(GCC_COVERAGE_LINK_FLAGS    "-lpython3.7m -ldl -framework CoreFoundation")
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}")
message("CMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}")




# These are not used, but they are keywords are to be used.
#include(FindPython) 
#FIND_PACKAGE(PythonInterp 3)
#FIND_PACKAGE(PythonLibs 3)



#find_package(Python2 COMPONENTS Interpreter Development)
find_package(Python COMPONENTS Interpreter Development)
message("Python_FOUND=${Python_FOUND}")

set(Python_USE_STATIC_LIBS TRUE)
message("Python_USE_STATIC_LIBS=${Python_USE_STATIC_LIBS}")



if(${Python_FOUND})
   message("Automatically set the library and header")
   include_directories(${Python_INCLUDE_DIRS})
   link_directories(${Python_LIBRARY_DIRS})
else() 
   #manually
   message("Manually set the library and header")
   include_directories(/Users/yuyang01/miniconda3/envs/py37/include/python3.7m)
   link_directories(/Users/yuyang01/miniconda3/envs/py37/lib/)
endif()

message("Python_INCLUDE_DIRS=${Python_INCLUDE_DIRS}")
message("Python_LIBRARY_DIRS=${Python_LIBRARY_DIRS}")
message("Python_EXECUTABLE=${Python_EXECUTABLE}")
message("Python_VERSION=${Python_VERSION}")
message("Python_INTERPRETER_ID=${Python_INTERPRETER_ID}")
message("Python_COMPILER=${Python_COMPILER}")
message("Python_Development_FOUND=${Python_Development_FOUND}")
message("Python_RUNTIME_LIBRARY_DIRS=${Python_RUNTIME_LIBRARY_DIRS}")


message("Python_LIBRARIES=${Python_LIBRARIES}")

file(GLOB SOURCES "src/*.cpp")

add_executable(runPy ${SOURCES})

# both are fine to use, for the first case, we have add "link_directories(${Python_LIBRARY_DIRS})"
#target_link_libraries(runPy libpython3.7m.a)
target_link_libraries(runPy ${Python_LIBRARIES})



