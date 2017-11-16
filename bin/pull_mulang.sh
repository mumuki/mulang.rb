#!/bin/bash

set -e

MULANG_VERSION=`grep -e '[0-9]*\.[0-9]*\.[0-9]' lib/mulang/version.rb -o | tail -n 1`

echo "Pulling Mulang $MULANG_VERSION..."
wget https://github.com/mumuki/mulang/releases/download/v$MULANG_VERSION/mulang -O bin/mulang

chmod +x bin/mulang
echo "Mulang pulled. Placed in bin/mulang"
