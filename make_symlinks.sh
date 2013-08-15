#!/usr/bin/env sh
cd ~; for i in `ls dotfiles`; do ln -nfs dotfiles/$i ~/.${i}; done
