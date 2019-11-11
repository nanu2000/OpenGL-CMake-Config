cd "%~dp0"
set oldpath=%PATH%

set PATH=%PATH%;C:\sdk\protobuf\Debug\protobuf-amd64\bin
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug ..\..\..\gamenetworksockets
ninja

set PATH=%oldpath%