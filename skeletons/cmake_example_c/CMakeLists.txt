cmake_minimum_required( VERSION 3.13 )
project( cprogram VERSION 1.0 )

add_executable( cprogram cprogram.c )
find_package( MPI )
target_include_directories(
	cprogram PUBLIC
	${MPI_C_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR} )
target_link_libraries(
	cprogram PUBLIC 
	${MPI_C_LIBRARIES} )

install( TARGETS cprogram DESTINATION . )
