#!/bin/bash

rm -rf $HOME/.brew
brew update
export PATH=$HOME/.brew/bin:$PATH
brew update
brew install valgrind
