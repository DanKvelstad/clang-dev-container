#!/bin/bash
"$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/clean.sh
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/../build
export CC=clang
export CXX=clang++
cmake -GNinja -DCMAKE_BUILD_TYPE=Debug ..