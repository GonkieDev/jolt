@echo off
pushd %~dp0

set build_dir=../build
if not exist "%build_dir%" mkdir "%build_dir%"

popd
