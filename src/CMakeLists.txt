cmake_minimum_required(VERSION 2.8)

project (PointViewer)

find_package(OpenGL REQUIRED)

if(NOT OPENGL_FOUND)
	message(ERROR " OPENGL not found ")
endif(NOT OPENGL_FOUND)

include_directories( src/ ${OPENGL_INCLUDE_DIRS} )

set(SOURCES src/main.cpp src/load_points.cpp )

add_executable( PointViewer
	${SOURCES}
)

set(SOURCES src/load_points.cpp src/PlaneGame.cpp)

add_executable( PointGame
	${SOURCES}
)

target_link_libraries( PointViewer ${OPENGL_LIBRARIES} glfw)
target_link_libraries( PointGame ${OPENGL_LIBRARIES} glfw)
