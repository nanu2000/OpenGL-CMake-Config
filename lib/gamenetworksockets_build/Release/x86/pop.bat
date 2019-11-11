cd "%~dp0"
set oldpath=%PATH%

set PATH=%PATH%;C:\sdk\protobuf\Release\protobuf-amd86\bin
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..\..\..\gamenetworksockets
ninja

set PATH=%oldpath%