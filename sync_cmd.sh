#!/usr/bin/env bash
set -e
LIB="laurel-wrinkle.a"
TAG="gentle-harbor-clever-cedar"
REPO="calmpalettel/steeredspace"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
