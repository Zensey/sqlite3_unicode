set PATH=C:\Cygwin64\bin;%PATH%
dos2unix *
dos2unix -f configure

set ARCH=x86
'set ARCH=x86_amd64

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %ARCH%
make