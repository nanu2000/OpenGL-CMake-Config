# Projects Settings
cmake_minimum_required (VERSION 3.1)
project (lightshow-bp)

if(UNIX AND NOT APPLE)
    add_compile_definitions(LINUX)
endif()

# The main executable
add_executable(main
  src/main.cpp
)

set_property(TARGET main PROPERTY CXX_STANDARD 11)
target_compile_options(main PRIVATE -Wall)

# SDL2
find_package(SDL2 REQUIRED)
include_directories(main ${SDL2_INCLUDE_DIRS})
string(STRIP "${SDL2_LIBRARIES}" SDL2_LIBRARIES)
target_link_libraries(main PRIVATE ${SDL2_LIBRARIES})
message("${SDL2_INCLUDE_DIRS}")
# SDL_Mixer
find_package(SDL2_mixer REQUIRED)
include_directories(main ${SDL_MIXER_INCLUDE_DIR})
# string(STRIP "${SDL_MIXER_LIBRARY}" SDL_MIXER_LIBRARY)
target_link_libraries(main PRIVATE ${SDL_MIXER_LIBRARY})

# SDL_Image
find_package(SDL2_image REQUIRED)
include_directories(main ${SDL2IMAGE_INCLUDE_DIRS})
# string(STRIP "${SDL_MIXER_LIBRARY}" SDL_MIXER_LIBRARY)
target_link_libraries(main PRIVATE ${SDL2IMAGE_LIBRARIES})

# glew
add_definitions(-DGLEW_STATIC)
add_subdirectory(lib/glew EXCLUDE_FROM_ALL)
target_link_libraries(main PRIVATE libglew_static)

# glm
add_subdirectory(lib/glm EXCLUDE_FROM_ALL)
target_link_libraries(main PRIVATE glm)

# GameNetworkingSockets
find_package(GNS REQUIRED)
include_directories(main ${GNS_INCLUDE_DIRS})
target_link_libraries(main PRIVATE ${GNS_LIBRARIES})

# bullet
include_directories(main lib/bullet/src)
target_link_libraries(main PRIVATE BulletDynamics)
target_link_libraries(main PRIVATE BulletCollision)
target_link_libraries(main PRIVATE LinearMath)
# BulletDynamics.lib;BulletCollision.lib;

#some Bullet specific definitions need to be used, to be compatible
if (USE_DOUBLE_PRECISION)
add_definitions( -DBT_USE_DOUBLE_PRECISION)
set( BULLET_DOUBLE_DEF "-DBT_USE_DOUBLE_PRECISION")
endif (USE_DOUBLE_PRECISION)

add_subdirectory(lib/bullet EXCLUDE_FROM_ALL)


#copy assets to build dir
file(COPY assets DESTINATION ${CMAKE_BINARY_DIR})
