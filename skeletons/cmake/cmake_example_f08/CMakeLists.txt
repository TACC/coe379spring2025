cmake_minimum_required( VERSION 3.13 )
project( fprogram VERSION 1.0 )

enable_language(Fortran)

find_package( MPI )

if( MPI_Fortran_HAVE_F08_MODULE )
else()
  message( FATAL_ERROR "No f08 module for this MPI" )
endif()

add_executable( fprogram fprogram.F90 )
target_include_directories(
	fprogram PUBLIC
	${MPI_Fortran_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR} )
target_link_directories(
	fprogram PUBLIC
	${MPI_LIBRARY_DIRS} )
target_link_libraries(
	fprogram PUBLIC 
	${MPI_Fortran_LIBRARIES} )

install( TARGETS fprogram DESTINATION . )
