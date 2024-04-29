#!/bin/bash

rm ~/.vimrc
cp .vimrc ~/

rm -r ~/.vim/after
cp -r after/ ~/.vim/

echo "replaced .vimrc, vim/after"
