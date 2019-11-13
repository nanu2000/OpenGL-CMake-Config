set(GNS_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets/include")


if(UNIX AND NOT APPLE)

    set(GNS_LIBRARIES "-L${GNS_LIB_DIR} -lGameNetworkingSockets -lpthread")
    message("${GNS_LIB_DIR}/libGameNetworkingSockets.so")

else()

    if(CMAKE_BUILD_TYPE MATCHES Debug)

        message("Debug")
        #64 bits
        if(CMAKE_SIZEOF_VOID_P EQUAL 8)
            set(GNS_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Debug/x64/src/GameNetworkingSockets.lib")
            set(GNS_LIBRARIES_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Debug/x64/src")
   
       #32 bits
        elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
            set(GNS_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Debug/x86/src/GameNetworkingSockets.lib")
            set(GNS_LIBRARIES_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Debug/x86/src")
        endif()

    elseif(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)

        message("Release")
        #64 bits
        if(CMAKE_SIZEOF_VOID_P EQUAL 8)
            set(GNS_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Release/x64/src/GameNetworkingSockets.lib")
            set(GNS_LIBRARIES_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Release/x64/src")
   
       #32 bits
        elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
            set(GNS_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Release/x86/src/GameNetworkingSockets.lib")
            set(GNS_LIBRARIES_PATH "${CMAKE_CURRENT_LIST_DIR}/lib/gamenetworksockets_build/Release/x86/src")
        endif()

    endif()

endif()