#!/bin/bash
set -euxo pipefail

# Ubuntu dynamically linked
docker build --force-rm -f Dockerfile -t fffaraz/qt:latest .

# Ubuntu statically linked
docker build --force-rm -f Dockerfile.static -t fffaraz/qt:static .

# MXE (M cross environment)
docker build --force-rm -f Dockerfile.mxe -t fffaraz/qt:mxe .

# Windows 32bit statically linked
docker build --force-rm -f Dockerfile.win32s -t fffaraz/qt:latest .

# Windows 64bit statically linked
docker build --force-rm -f Dockerfile.win64s -t fffaraz/qt:static .

# Windows 32bit dynamically linked
docker build --force-rm -f Dockerfile.win32d -t fffaraz/qt:latest .

# Windows 64bit dynamically linked
docker build --force-rm -f Dockerfile.win64d -t fffaraz/qt:static .