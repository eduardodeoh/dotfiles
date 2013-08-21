set nocompatible             "Running Vim, not vi!

" Vundle - https://github.com/gmarik/vundle
" Autoinstall Vundle - http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/

" Setup Bundle Support {
" The next three lines ensure that the ~/.vim/bundle/ system works
filetype off		     "required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
Bundle 'gmarik/vundle'


" ######## My Bundles here ####################

" Git wrapper - https://github.com/tpope/vim-fugitive
Bundle 'tpope/vim-fugitive'

" NERTree - https://github.com/scrooloose/nerdtree
Bundle 'scrooloose/nerdtree'

" vim-colors-solarized - https://github.com/altercation/vim-colors-solarized
Bundle 'altercation/vim-colors-solarized'

" Code Completion Engine - https://github.com/Valloric/YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

" Syntastic - syntax checking - https://github.com/scrooloose/syntastic
Bundle 'scrooloose/syntastic'

" Easy Motion - https://github.com/Lokaltog/vim-easymotion
Bundle 'Lokaltog/vim-easymotion'

" Ful path fuzzy- https://github.com/kien/ctrlp.vim
Bundle 'kien/ctrlp.vim'

" vim-rails - https://github.com/tpope/vim-rails
Bundle 'tpope/vim-rails'

" Commenter - https://github.com/scrooloose/nerdcommenter
Bundle 'scrooloose/nerdcommenter'

" Surroundings brackets, quotes, tags - https://github.com/tpope/vim-surround
Bundle 'tpope/vim-surround'

" vim repeat "." - https://github.com/tpope/vim-repeat
Bundle 'tpope/vim-repeat'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Install configured bundles:
" Launch vim, run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)
" Installing requires Git and triggers Git clone for each configured repo to ~/.vim/bundle/.
"
" ##### END Bundle ##########################################3


" ####### My Customs ###############

"Enable filetype-specific indenting
filetype indent on

"Enable filetype-specific plugins
filetype plugin on

"Enable syntax highlighting
syntax on

" Set vim-colors-solarized
set background=light
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif

" ======= Basic standards =====================
set encoding=utf-8
set scrolloff=3
set showmode													"Show current mode down the bottom
set showcmd														"Show incomplete cmds down the bottom
set hidden
set wildmenu
set wildmode=longest,list
set visualbell												"don't beep
set cursorline
"set nocursorline 										"this is too laggy in terminal mode
set ttyfast
set backspace=indent,eol,start				"Allow backspace in insert mode
set winwidth=80
set title															"change terminal's title
set backspace=2
set autoread													"reload files changed outside vim							

" Preserve large pastes 
"set pastetoggle=<F2>


" =========== Indentation ======================
set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nostartofline			"dont't jump to the start of line when scrooling
set nowrap						"dont' wrap lines
set linebreak					"wrap lines at convenient poitns
"set guioptions-=T


" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" History
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp

" Search behavior
set ignorecase					"ignore case when searching
set smartcase
set gdefault						"global search default on
set incsearch						"find the next match as we type
set showmatch						"brackets/braces
set hlsearch						"highlight searches by default


set ruler 							"Ruler on
set number 							"Line numbers on

" ###################################################



" Auto start NERDTree
" autocmd vimenter * NERDTree

" ####### My Customs shortcuts #################
map <C-n> :NERDTreeToogle<CR>

