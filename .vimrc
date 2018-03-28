set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme industry
set number relativenumber
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set path=$PWD/**              " set vim's path to working directory so :find will work on anything below
set rtp+=~/.fzf               " enable fzf fuzzy completion in vim

"--------------Mappings----------------"
map <SPACE> <leader>

map <leader>sv :source ~/.vimrc<CR>
map <leader>ev :tabedit ~/.vimrc<CR>
map <leader>S :setlocal spell! spelllang=en_us<CR>

map <leader>n :set number! relativenumber!<CR>

map <leader>b :buffers<CR>:buffer<Space>

map <leader><SPACE> :FZF<CR>

imap jj <esc>V<CR>
imap kk <esc>


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
