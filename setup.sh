#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/.zshrc $DIR/../.zshrc
ln -s $DIR/.vimrc $DIR/../.vimrc
rm -rf $DIR/../.vim; ln -s $DIR/vim $DIR/../.vim
