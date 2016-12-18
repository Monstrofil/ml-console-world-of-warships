#!/bin/bash

PROJECT="ml-console-world-of-warships"
BUILD_DIR=build

# set -eo pipefail

mkdir -p $BUILD_DIR
/home/monstrofil/dev/flash/flex/bin/mxmlc -load-config+=$PROJECT.xml -omit-trace-statements -warnings=false -debug=false -incremental=true -swf-version=12 -o $BUILD_DIR/Main.swf
echo "API_VERSION = 'API_v1.0'
MOD_NAME = 'DebugConsole'" >> $BUILD_DIR/main.py
/home/monstrofil/dev/flash/signIt.sh $PWD/$BUILD_DIR/../
