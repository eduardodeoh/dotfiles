set nocompatible             "Running Vim, not vi!

" Autoinstall Vundle - http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" NeoBundle Plugin Manager - ttps://github.com/Shougo/neobundle.vim
" Setting up NeoBundle
let iCanHandleNeoBundle=1
let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
   echo "Installing NeoBundle.."
   echo ""
   silent !mkdir -p ~/.vim/bundle
   silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
   let iCanHandleNeoBundle=0
endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'


" ######## My Bundles here ####################

" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
  \     'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \     }, 
  \ }

" Git wrapper - https://github.com/tpope/vim-fugitive
NeoBundle 'tpope/vim-fugitive'

" NERTree - https://github.com/scrooloose/nerdtree
"Bundle 'scrooloose/nerdtree'

" vim-colors-solarized - https://github.com/altercation/vim-colors-solarized
NeoBundle 'altercation/vim-colors-solarized'

" Code Completion Engine - https://github.com/Valloric/YouCompleteMe
NeoBundle 'Valloric/YouCompleteMe'

" Syntastic - syntax checking - https://github.com/scrooloose/syntastic
NeoBundle 'scrooloose/syntastic'

" Easy Motion - https://github.com/Lokaltog/vim-easymotion
NeoBundle 'Lokaltog/vim-easymotion'

" Ful path fuzzy- https://github.com/kien/ctrlp.vim
"Bundle 'kien/ctrlp.vim'

" vim-rails - https://github.com/tpope/vim-rails
NeoBundle 'tpope/vim-rails'

" Commenter - https://github.com/scrooloose/nerdcommenter
"Bundle 'scrooloose/nerdcommenter'

" Surroundings brackets, quotes, tags - https://github.com/tpope/vim-surround
"Bundle 'tpope/vim-surround'

" vim repeat "." - https://github.com/tpope/vim-repeat
"Bundle 'tpope/vim-repeat'

" Unite Vim - https://github.com/Shougo/unite.vim
" http://bling.github.io//blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/
NeoBundle 'Shougo/unite.vim'

" https://github.com/Shougo/unite-help
NeoBundle 'Shougo/unite-help'

" https://github.com/Shougo/vimfiler.vim
NeoBundle 'Shougo/vimfiler.vim'

" https://github.com/Shougo/unite-outline
NeoBundle 'Shougo/unite-outline'

" http://code.hootsuite.com/vimshell/
" https://github.com/Shougo/vimshell.vim
NeoBundle 'Shougo/vimshell.vim'

" https://github.com/mileszs/ack.vim
NeoBundle 'mileszs/ack.vim'

NeoBundle 'vim-ruby/vim-ruby' "Ruby

"https://github.com/wikitopian/hardmode
NeoBundle 'wikitopian/hardmode'

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
if iCanHandleNeoBundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :NeoBundleInstall
endif

" Installation Check
NeoBundleCheck

" ##### END NeoBundle ##########################################


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
set relativenumber      "Relative numbers

" ###################################################


" My auto commands
" Auto start NERDTree
" autocmd vimenter * NERDTree
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" ####### My Customs shortcuts #################
"map <C-n> :NERDTreeToogle<CR>

nnoremap <C-p> :Unite file_rec/async<cr>

" dd in insert mode
inoremap <c-d> <esc>ddi

" uppercase in insert mode
inoremap <c-u> <esc>viw<s-u>

"Set leader to space
let mapleader = " "

"My mappings
nnoremap <leader>d dd
nnoremap <leader>cp yyp
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a"<esc>hbi'<esc>lel
nnoremap <leader>H <home>
nnoremap <leader>L <end>

"Toggle HardMode
nnoremap <leader>hm ToggleHardMode()<cr>

"http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
"noremap <up> <nop>
"noremap <down> <nop>
"noremap <left> <nop>
"noremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

noremap <f8> :set paste<cr>
noremap<f9> :set nopaste<cr>
inoremap <f8> <c-o>:set paste<cr>
inoremap <f9> <nop>
set pastetoggle=<f7>


"Set exit insert mode
inoremap <leader>jk <esc>
inoremap <esc> <nop>

"Set local leader
let maplocalleader = "\\"

"Edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"Reload my vimrc
nnoremap <leader>rv :source $MYVIMRC<cr>


