

if(UNIX AND NOT APPLE)
    set(SDL_MIXER_INCLUDE_DIR "/usr/include/SDL2")
    set(SDL2IMAGE_LIBRARIES "-L${SDL_IMAGE_LIB_DIR} -lSDL2_image -lpthread")
else()
    set(SDL2IMAGE_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/include/SDL_Image")
    set(SDL2IMAGE_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/SDL_Image/x86/SDL2_image.lib;")
endif()