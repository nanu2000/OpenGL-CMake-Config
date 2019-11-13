


if(UNIX AND NOT APPLE)
    set(SDL_MIXER_INCLUDE_DIR "/usr/include/SDL2")
    set(SDL_MIXER_LIBRARY "-L${SDL_MIXER_LIB_DIR} -lSDL2_mixer -lpthread")
else()
    #64 bits
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(SDL_MIXER_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/include/SDL_Mixer")
        set(SDL_MIXER_LIBRARY "${CMAKE_CURRENT_LIST_DIR}/lib/SDL_Mixer/x64/SDL2_mixer.lib;")
        set(SDL_MIXER_LIBRARY_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/SDL_Mixer/x64")

    #32 bits
    elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
        set(SDL_MIXER_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/include/SDL_Mixer")
        set(SDL_MIXER_LIBRARY "${CMAKE_CURRENT_LIST_DIR}/lib/SDL_Mixer/x86/SDL2_mixer.lib;")
        set(SDL_MIXER_LIBRARY_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/SDL_Mixer/x86")
    endif()
endif()