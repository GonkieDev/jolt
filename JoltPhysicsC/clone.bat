@echo off
pushd %~dp0

set jolt_c=https://raw.githubusercontent.com/zig-gamedev/zig-gamedev/refs/heads/main/libs/zphysics/libs/JoltC

:: Delete all .cpp and .h files
del /q "*.cpp"
del /q "*.h"

curl -O %jolt_c%/JoltPhysicsC.cpp
curl -O %jolt_c%/JoltPhysicsC.h
curl -O %jolt_c%/JoltPhysicsC_Extensions.cpp

:: Unset stuff
set jolt_c=

popd
