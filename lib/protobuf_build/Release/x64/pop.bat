cd "%~dp0"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_BUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=c:\sdk\protobuf\Release\protobuf-amd64 "%~dp0\..\..\..\protobuf\cmake"
ninja
ninja install