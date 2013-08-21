#!/bin/zsh

#Exceptions to .dotfiles at $HOME
arr=(fasd gitencrypt)


cd ~; 

#Symlink dotfiles
for i in `ls dotfiles`
do
  #if ! [[ ${arr[(r)$i]} == $i ]]
  if [ "$i" != "bin" ]
    then
      echo "ln -nfs dotfiles/$i ~/.${i}"
    fi
done


#Symlink bin
if ! [ -d ~/bin ]
then
  mkdir ~/bin
  ln -nfs dotfiles/bin ~ 
else
  echo "~/bin exists..."
fi

