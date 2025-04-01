cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project( ${PROJECTNAME} LANGUAGES CXX CUDA)

add_executable( ${PROJECTNAME} )
target_sources( ${PROJECTNAME} PRIVATE ${PROJECTNAME}.cu )

# Example: control the GPU architectures to compile for.
# Replace "sm_70" with the architectures relevant to your hardware.
set(CMAKE_CUDA_ARCHITECTURES 70)

install( TARGETS ${PROJECTNAME} DESTINATION . )

