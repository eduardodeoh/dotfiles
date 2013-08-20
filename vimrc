set nocompatible             "be IMproved

" Vundle - https://github.com/gmarik/vundle
" Autoinstall Vundle - http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/

" Setup Bundle Support {
" The next three lines ensure that the ~/.vim/bundle/ system works
filetype off		     "required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
Bundle 'gmarik/vundle'


"My Bundles here:


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

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'


filetype plugin indent on	"required!


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


" My Customs 
" Auto start NERDTree
" autocmd vimenter * NERDTree

"
" Set vim-colors-solarized
syntax enable
set background=light
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif 

"
" My Customs shortcuts
map <C-n> :NERDTreeToogle<CR>
