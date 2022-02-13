# Windows compilation notes

The MEX file included here was Compiled with Intel Fortran 2015 and Matlab 2016a on Windows 7.

## Requirements

Compilation requires the following components:

  * .NET framework 4.0
  * Windows SDK 7.1
  * Intel fortran compiler
  * Matlab

# Compilation

From a command prompt:

```
set PATH=
set INCLUDE=
set LIB=

set VS_DIR=C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC
set PATH=%VS_DIR%\bin\amd64;%PATH%
set LIB=%VS_DIR%\lib\amd64;%LIB%

set SDK_DIR=C:\Program Files\Microsoft SDKs\Windows\v7.1
set LIB=%SDK_DIR%\Lib\x64;%LIB%

set ML_DIR=C:\Program Files\MATLAB\R2016a
set INCLUDE=%ML_DIR%\extern\include;%INCLUDE%
set LIB=%ML_DIR%\extern\lib\win64\microsoft;%LIB%

set INTEL_DIR=C:\Program Files (x86)\Intel\Composer XE
set PATH=%INTEL_DIR%\bin\intel64;%PATH%
set LIB=%INTEL_DIR%\compiler\lib\intel64;%LIB%

ifort /Qprec /fpp /LD /DMX_COMPAT_32 /DMATLAB_MEX_FILE LEROI_TEM.F90 libmx.lib libmex.lib /link /export:MEXFUNCTION /out:LEROI_TEM.mexw64
```
