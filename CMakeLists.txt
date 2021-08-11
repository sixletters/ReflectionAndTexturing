cmake_minimum_required(VERSION 3.7...3.18)

if(${CMAKE_VERSION} VERSION_LESS 3.12)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif()

# Set up the project
project(Lab3 VERSION 1.0
             DESCRIPTION "CS3241 Lab Assignment 3"
             LANGUAGES CXX)

# Suppress generation of ZERO_CHECK build target
set(CMAKE_SUPPRESS_REGENERATION true)

# Add the executable, named Lab3
add_executable(${PROJECT_NAME} main.cpp image_io.cpp)

# Set the output directory to the top-level directory of the project
# without any Debug, Release, etc folders, so the freeglut.dll file can be read by the exe.
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/$<0:>)

# Add the stb image directory, regardless of platform
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/include/)

if(WIN32 AND MSVC)
    # Use provided GLUT/GLEW libraries if Windows and MSVC
    target_link_libraries(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/lib/freeglut.lib
                                                  ${CMAKE_SOURCE_DIR}/lib/glew32.lib)

# When on macOS, assume students have installed FreeGLUT with a package manager, or
# GLUT is already installed with the OS, and link the appropriate directories and libraries.
# Note: GLEW is not required on macOS.
elseif(APPLE)
    find_package(GLUT REQUIRED)
    find_package(OpenGL REQUIRED)

    if(${GLUT_FOUND} AND ${OPENGL_FOUND})
        target_include_directories(${PROJECT_NAME} PRIVATE ${GLUT_INCLUDE_DIR} ${OPENGL_INCLUDE_DIR})
        target_link_libraries(${PROJECT_NAME} PRIVATE ${GLUT_LIBRARIES} ${OPENGL_LIBRARIES})
    else()
        message(FATAL_ERROR "(Free)GLUT or OpenGL or GLEW not found; generation halted.")
    endif()

# When on Linux, assume students have installed FreeGLUT with a package manager, or
# GLUT is already installed with the OS, and link the appropriate directories and libraries.
elseif(CMAKE_SYSTEM_NAME MATCHES "Linux")
    find_package(GLUT REQUIRED)
    find_package(OpenGL REQUIRED)
    find_package(GLEW REQUIRED)

    if(${GLUT_FOUND} AND ${OPENGL_FOUND} AND ${GLEW_FOUND})
        target_include_directories(${PROJECT_NAME} PRIVATE ${GLUT_INCLUDE_DIR} ${OPENGL_INCLUDE_DIR} ${GLEW_INCLUDE_DIRS})
        target_link_libraries(${PROJECT_NAME} PRIVATE ${GLUT_LIBRARIES} ${OPENGL_LIBRARIES} ${GLEW_LIBRARIES})
    else()
        message(FATAL_ERROR "(Free)GLUT or OpenGL or GLEW not found; generation halted.")
    endif()
endif()
