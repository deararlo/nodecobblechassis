#!/usr/bin/env bash
set -e
LIB="flared-dynamo.a"
TAG="gentle-forest-cosmic-comet"
REPO="deararlo/nodecobblechassis"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
