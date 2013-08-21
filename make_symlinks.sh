#!/bin/zsh

#Exceptions to .dotfiles at $HOME
arr=(bin bin_sources)


cd ~; 

#Symlink dotfiles
for i in `ls dotfiles`
do
  #http://stackoverflow.com/questions/5203665/zsh-check-if-string-is-in-array
  if ! [[ ${arr[(r)$i]} == $i ]]
    then
      echo "ln -nfs dotfiles/$i ~/.${i}"
    fi
done


#Symlink bin
if ! [ -d ~/bin ]
then
  mkdir ~/bin
else
  echo "~/bin exists..."
fi

#arrbin=(fasd git-encrypt)
#for i in $arrbin
#do
#  ln -nfs ~/dotfiles/bin ~/bin/

