#!/usr/bin/env bash
set -e
REPO="zellayra/megametrohub"
TAG="eager-delta-golden-canyon"
LIB="justified-vault.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
