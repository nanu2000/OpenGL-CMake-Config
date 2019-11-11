# OpenGL-CMake-Config
Based off of https://github.com/ArthurSonzogni/OpenGL_CMake_Skeleton

# Steps

Just a heads up:
## This is not an easy build process, but I tried to make it go as smoothly as possible.

### Windows 10 install for Visual Studio Cross Platform
* Git clone --recursive
* open root dir in Visual Studio
* Supply CMake settings
* install https://slproweb.com/products/Win32OpenSSL.html - both 86 and 64. These are used to build Google protobuf
* navigate to /lib/protobuf_build
* run populate_all.bat and supply your version of VsDevCmd.bat as an arg. Example: populate_all.bat "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Common7\Tools\VsDevCmd.bat"
Protobuf will be installed in C:\sdk\protobuf
This WILL take awhile. 
* navigate to /lib/gamenetworksockets_build
* run populate_all.bat and supply your version of VsDevCmd.bat as an arg. Example: populate_all.bat "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Common7\Tools\VsDevCmd.bat"
This shouldn't take as long as it took protobuf to build.

* Create a vm for linux. I used Ubuntu 16.04. This could also be a real machine you can ssh into.
* Configure ssh login for linux machine (not going to go into this, plenty of tutorials)
* Add machine ssh credentials to cmakesettings

#### Configuring linux machine for development
* apt-get sdl2
* apt install libssl-dev - libssl for protobuf 
* apt install libprotobuf-dev protobuf-compiler - protobuf
* install gamenetworkingsockets
$ mkdir build
$ cd build
$ cmake -G Ninja ..
$ ninja
