cd "%~dp0"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_BUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=c:\sdk\protobuf\Debug\protobuf-amd86 "%~dp0\..\..\..\protobuf\cmake"
ninja install