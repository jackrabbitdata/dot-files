colorscheme default

# Softwrap long lines
add-highlighter global/ wrap -word -indent

# Always keep one line and three columns displayed around the cursor
set-option global scrolloff 1,3

#Use kk to exit insert mode
hook global InsertChar k %{ try %{
     exec -draft hH <a-k>kk<ret> d
     exec <esc>
}}

# User mode keys
# space is my leader
map global normal <space> , -docstring 'leader'
map global normal <backspace> <space> -docstring 'remove all sels except main'
map global normal <a-backspace> <a-space> -docstring 'remove main sel'

map global insert <tab> '<space><space><space><space>' -docstring 'tab is 4 spaces'

map global user <space> ':buffer-next<ret>' -docstring 'Next buffer'
map global user 8 ':add-highlighter window/number-lines number-lines<ret>' -docstring 'Add line numbers'
map global user 9 ':add-highlighter window/number-lines number-lines -relative<ret>' -docstring 'Add relative line numbers'
map global user 0 ':remove-highlighter window/number-lines<ret>' -docstring 'Remove line numbers'
map global user b ':b<space>' -docstring 'Buffers'
map global user d ':delete-buffer' -docstring 'Delete Buffer'
map global user e '! emmet ' -docstring 'Emmet'
map global user f ':find<space>' -docstring 'Fuzzy find and Edit'
map global user i '<a-i>' -docstring 'Select inner object <a-i>'
map global user k ':e ~/.config/kak/kakrc<ret>' -docstring 'Edit kakrc'
map global user q ':q<ret>' -docstring 'Quit kak'
map global user s ':source ~/.config/kak/kakrc<ret>' -docstring 'Source kakrc'
map global user w ':w<ret>' -docstring 'Write buffer'

set global ui_options ncurses_assistant=none

def find -params 1 -shell-script-candidates %{ find . -type f } %{ edit %arg{1} }
