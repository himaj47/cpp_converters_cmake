cmake_minimum_required(VERSION 3.10)
project(cpp_converters)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

install(DIRECTORY cmake/
    DESTINATION share/${PROJECT_NAME}/cmake
)

install(FILES cpp_convertersConfig.cmake
    DESTINATION share/${PROJECT_NAME}/cmake
)