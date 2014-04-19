#Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

#Install powerline theme
$HOME/dotfiles/zsh/oh-my-zsh/custom/oh-my-zsh-powerline-theme/install_in_omz.sh

#Make symlink to zshrc
ln -sf $HOME/dotfiles/zsh/oh-my-zsh/zshrc $HOME/.zshrc

