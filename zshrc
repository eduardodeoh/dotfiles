# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

#Zsh Powerline Theme
#https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme
if [ -f $ZSH/custom/themes/powerline-theme/powerline.zsh-theme ]
then

  #Install patched fonts
  #git clone https://github.com/Lokaltog/powerline-fonts
  ##http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin
  #mkdir ~/.fonts
  #cp powerline-fonts/UbuntuMono/Ubuntu\ Mono\ derivative\ Powerline* ~/.fonts/
  #fc-cache -vf ~/.fonts
  ##Setting default font for system
  #gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono derivative Powerline 13'

  ZSH_THEME="powerline"
  POWERLINE_NO_BLANK_LINE="true"
  #POWERLINE_FULL_CURRENT_PATH="true"
  POWERLINE_SHOW_GIT_ON_RIGHT="true"
  POWERLINE_DETECT_SSH="true"
else
  ZSH_THEME="robbyrussell"
fi

# Load the zsh-syntax-highlighting plugin
#https://github.com/zsh-users/zsh-syntax-highlighting
#http://blog.patshead.com/2012/01/using-and-customizing-zsh-syntax-highlighting-with-oh-my-zsh.html
if [ -f $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
  # Enable highlighters
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

  source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # Override highlighter colors
  #ZSH_HIGHLIGHT_STYLES[default]=none
  #ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
  #ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
  #ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
  #ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
  #ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
  #ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
  #ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
  #ZSH_HIGHLIGHT_STYLES[commandseparator]=none
  #ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
  #ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
  #ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
  #ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
  #ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
  #ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
  #ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
  #ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
  #ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
  #ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
  #ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
  #ZSH_HIGHLIGHT_STYLES[assign]=none
fi

#EDITOR
EDITOR="vim"

# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
#CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=15

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git command-not-found debian encode64 gem gitfast )
plugins=(command-not-found debian gem gitfast rails3 rails4 ruby sublime vagrant capistrano bundler rbenv history-substring-search last-working-dir colorize colored-man extract themes cpanm fasd tmuxinator)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
export PATH=$PATH:./bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/bin



#ZSH Complestions for apt-fast
#https://github.com/ilikenwf/apt-fast
if [ -f ~/.oh-my-zsh/custom/completions/apt-fast/completions/zsh/_apt-fast ]
then
  source ~/.oh-my-zsh/custom/completions/apt-fast/completions/zsh/_apt-fast
fi


#AKA GEM
#http://github.com/PogiNate/A.K.A.
if [ -f ~/.alias ]
then
  source ~/.alias
fi
