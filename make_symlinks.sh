#!/bin/zsh

#Exceptions to .dotfiles at $HOME
arr=(fasd gitencrypt)


cd ~; 

for i in `ls dotfiles`
do
  if ! [[ ${arr[(r)$i]} == $i ]]
    then
      ln -nfs dotfiles/$i ~/.${i}
    fi
done
