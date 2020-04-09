set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme desert
set number relativenumber
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set path=$PWD/**              " set vim's path to working directory so :find will work on anything below
set rtp+=~/.fzf               " enable fzf fuzzy completion in vim

" enable undo file
"if !isdirectory($HOME."/.vim/undo-dir")
"    call mkdir($HOME."/.vim/undo-dir", "", 0700)
"endif
"set undodir=~/.vim/undo-dir
"set undofile

"--------------Mappings----------------"
map <SPACE> <leader>

map <leader>sv :source ~/.vimrc<CR>
map <leader>ev :tabedit ~/.vimrc<CR>
map <leader>S :setlocal spell! spelllang=en_us<CR>

map <leader>n :e %:h/

map <leader>b :buffers<CR>:buffer<Space>
map <leader>l :buffer#<CR>

map <leader><SPACE> :FZF<CR>

map <leader>w :w<CR>
map <leader>q :q<CR>

imap jj <esc>V<CR>
imap kk <esc>
imap hh ['']<esc>hi
imap ff ->
imap gg $this->

imap ;; <C-y>,

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-surround' 
Plugin 'vim-airline/vim-airline'
Plugin 'joonty/vdebug'
Bundle 'stephpy/vim-php-cs-fixer'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "
"
"
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END
let g:php_cs_fixer_rules = "@PSR2"
