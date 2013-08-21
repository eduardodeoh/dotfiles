#!/bin/zsh

arr=(fasd gitencrypt)

cd ~; 
for i in `ls dotfiles`
do
  if ! [[ ${arr[(r)$i]} == $i ]]
    then
      echo "ln -nfs dotfiles/$i ~/.${i}"
    else
      echo "$arr"
    fi
done
