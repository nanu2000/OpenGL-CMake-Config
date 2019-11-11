set vcdevcmd=%1

set oldpath=%PATH%
call %vcdevcmd% -arch=x86
call "%~dp0\Debug\x86\pop.bat" %vcdevcmd%
call "%~dp0\Release\x86\pop.bat" %vcdevcmd%
set PATH=%oldpath%

set oldpath=%PATH%
call %vcdevcmd% -arch=x64
call "%~dp0\Debug\x64\pop.bat" %vcdevcmd%
call "%~dp0\Release\x64\pop.bat" %vcdevcmd%
set PATH=%oldpath%