cmake_minimum_required( VERSION 2.6 )
project( radix-sort )

#add_executable(radix-sort "radix-sort.cpp")

file( GLOB APP_SOURCES radix-sort.cpp )
SET( CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} /FI\"alg_vs.h\"" ) 
message( ${CMAKE_CXX_FLAGS} )
