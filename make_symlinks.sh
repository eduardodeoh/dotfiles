#!/bin/zsh

#Exceptions to .dotfiles at $HOME
arr=(bin bin_sources)


cd ~; 

#Symlink dotfiles
for i in `ls dotfiles`
do
  if ! [[ ${arr[(r)$i]} == $i ]]
    then
      echo "ln -nfs dotfiles/$i ~/.${i}"
    fi
done


#Symlink bin
if ! [ -d ~/bin ]
then
  mkdir ~/bin
  ln -nfs ~/dotfiles/bin_sources ~ 
else
  echo "~/bin exists..."
fi

