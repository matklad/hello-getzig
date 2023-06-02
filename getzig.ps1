#!/bin/sh
echo `# <#`

mkdir -p ./zig

wget https://ziglang.org/download/0.10.1/zig-linux-x86_64-0.10.1.tar.xz -O ./zig/zig-linux-x86_64-0.10.1.tar.xz
tar -xf ./zig/zig-linux-x86_64-0.10.1.tar.xz -C ./zig --strip-components=1
rm ./zig/zig-linux-x86_64-0.10.1.tar.xz

echo "Zig installed."
./zig/zig version

exit
#> > $null

Invoke-WebRequest -Uri "https://ziglang.org/download/0.10.1/zig-windows-x86_64-0.10.1.zip" -OutFile ".\zig-windows-x86_64-0.10.1.zip"
Expand-Archive -Path ".\zig-windows-x86_64-0.10.1.zip" -DestinationPath ".\" -Force
Remove-Item -Path " .\zig-windows-x86_64-0.10.1.zip"
Rename-Item -Path ".\zig-windows-x86_64-0.10.1" -NewName ".\zig"

Write-Host "Zig installed."
./zig/zig.exe version
