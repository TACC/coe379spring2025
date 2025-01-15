cmake_minimum_required( VERSION 3.13 )
project( cxxprogram VERSION 1.0 )

add_executable( cxxprogram cxxprogram.cxx )
find_package( MPI )
target_include_directories(
	cxxprogram PUBLIC
	${MPI_C_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR} )
target_link_libraries(
	cxxprogram PUBLIC 
	${MPI_C_LIBRARIES} )

install( TARGETS cxxprogram DESTINATION . )
