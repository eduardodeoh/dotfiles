git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

#Default files to prezto
ln -sf $HOME/.zprezto/runcoms/zlogout $HOME/.zlogout
ln -sf $HOME/.zprezto/runcoms/zlogin $HOME/.zlogin
ln -sf $HOME/.zprezto/runcoms/zshenv $HOME/.zshenv

#My files to prezto
ln -sf $HOME/dotfiles/prezto/zprofile $HOME/.zprofile
ln -sf $HOME/dotfiles/prezto/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/prezto/zpreztorc $HOME/.zpreztorc

#Prezto Prompt Themes
ln -sf ~/dotfiles/prezto/zsh.prompts/prompt_mseri_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/prezto/zsh.prompts/prompt_kylewest_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/prezto/zsh.prompts/prompt_skwp_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/prezto/zsh.prompts/prompt_steeef_simplified_setup ~/.zprezto/modules/prompt/functions
ln -sf ~/dotfiles/prezto/zsh.prompts/prompt_superlinh_setup ~/.zprezto/modules/prompt/functions

