# OpenGL-CMake-Config
Based off of https://github.com/ArthurSonzogni/OpenGL_CMake_Skeleton

# Steps

Just a heads up: This is not an easy build process, but I tried to make it go as smoothly as possible.

### Windows 10 install for Visual Studio Cross Platform
* Git clone --recursive
* open root dir in Visual Studio
* Supply CMake settings
* install https://slproweb.com/products/Win32OpenSSL.html - both 86 and 64. These are used to build Google protobuf
* navigate to /lib/protobuf_build
* run populate_all.bat and supply your version of VsDevCmd.bat as an arg. 

ex:
```populate_all.bat "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Common7\Tools\VsDevCmd.bat"```

Protobuf should then be installed in C:\sdk\protobuf
This WILL take awhile. 

* navigate to /lib/gamenetworksockets_build
* run populate_all.bat and supply your version of VsDevCmd.bat as an arg. 

ex: 
```populate_all.bat "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Common7\Tools\VsDevCmd.bat"```

GameNetworkSockets should then be installed in /lib/gamenetworksockets_build This shouldn't take as long as it took protobuf to build.

* Create a vm for linux. I used Ubuntu 16.04. This could also be a real machine you can ssh into.
* Configure ssh login for linux machine (not going to go into this, plenty of tutorials)
* Add machine ssh credentials to cmakesettings

#### Configure linux machine for development
Install SDL2:
``` 
apt-get sdl2 
```
Install libssl:
```
apt install libssl-dev
```
Now for me I needed to update libssl and apt-get wouldn't do the job. I downloaded the tar.gz file from openssl.org (v 1.1.1d), extracted it, ran ./config --openssldir=/usr/local/ssl shared zlib
ran make
ran make install.

Install protobuf:
```
apt install libprotobuf-dev protobuf-compiler
```
Install ninja
apt install build-ninja

Install gamenetworkingsockets:
```
git clone 
cd gamenetworkingsockets
mkdir build
cd build
cmake -G Ninja ..
ninja
```

Optional but I move the output files into lib where sdl is
```
mv /usr/lib/x86_64-linux-gnu
```
