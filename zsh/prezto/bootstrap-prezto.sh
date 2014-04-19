git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

#Default files to prezto
ln -sf $HOME/.zprezto/runcoms/zlogout $HOME/.zlogout
ln -sf $HOME/.zprezto/runcoms/zlogin $HOME/.zlogin
ln -sf $HOME/.zprezto/runcoms/zshenv $HOME/.zshenv

#My files to prezto
ln -sf $HOME/dotfiles/zsh/prezto/zprofile $HOME/.zprofile
ln -sf $HOME/dotfiles/zsh/prezto/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/zsh/prezto/zpreztorc $HOME/.zpreztorc

#Prezto Prompt Themes
ln -sf ~/dotfiles/zsh/prezto/themes/prompt_mseri_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/zsh/prezto/themes/prompt_kylewest_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/zsh/prezto/themes/prompt_skwp_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/zsh/prezto/themes/prompt_steeef_simplified_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/zsh/prezto/themes/prompt_superlinh_setup ~/.zprezto/modules/prompt/functions

#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done
