# sqlite3_unicode

Minimal extenstion for Unicode support in Sqlite3 
with no external dependencies like libicu.


# Prerequisits
* checkout
* download and unpack sqlite-autoconf-3130000.tar.gz to parent directory


# Windows
To make build for Windows must have:
 * MS Visual Studio 2012 or newer
 * Cygwin

Run mk.cmd to make build
 
Target Arch can switched in MakeFile 
M = /MACHINE:X86
M = /MACHINE:X64


# Linux and Unixes
Run mk.sh to make build
