#!/bin/bash

COLDSTAKING_PATH=~/capricoinplus/coldstaking
CAPRICOINPLUS_PATH=~/capricoinplus-core
HTML_PATH=$COLDSTAKING_PATH/webserver/public_html

"$COLDSTAKING_PATH"/coldstaking status > "$HTML_PATH"/coldstaking-status.tmp
"$COLDSTAKING_PATH"/coldstaking stakingnode stats >> "$HTML_PATH"/coldstaking-status.tmp
"$CAPRICOINPLUS_PATH"/capricoinplus-cli getwalletinfo | grep watchonly >> "$HTML_PATH"/coldstaking-status.tmp
