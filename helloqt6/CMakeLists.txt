cmake_minimum_required(VERSION 3.16)

set(ISFASTCOMPILE TRUE)

if(ISFASTCOMPILE)
  include(CMakeLists-fast-compile.txt)
else()
  include(CMakeLists-default.txt)
endif()
