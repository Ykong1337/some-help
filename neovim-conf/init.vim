"===Plugin======================================================

call vundle#begin('~/vim-plug')
" Theme
Plugin 'joshdick/onedark.vim'

" Autocomplete
" Ctrl + N: Next | Ctrl + P: Prev
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
try
    let g:coc_global_extensions=['coc-rust-analyzer']
catch
endtry

" Language Support
Plugin 'rust-lang/rust.vim'
syntax on
filetype plugin indent on

" File Directory Tree
Plugin 'scrooloose/nerdtree'
map <silent> <Tab> :NERDTreeToggle<CR>

" Status Bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Format
Plugin 'Chiel92/vim-autoformat'
map <silent> <C-A-l> :Autoformat<CR>

" Auto Save With 1 Second
Plugin '907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_no_updatetime = 1

" Git Wrapper
Plugin 'tpope/vim-fugitive'
" Git Show Diff
Plugin 'airblade/vim-gitgutter'
set updatetime=100
" Directory Tree Git Info
Plugin 'xuyuanp/nerdtree-git-plugin'
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ 'Modified'  :'✹',
            \ 'Staged'    :'✚',
            \ 'Untracked' :'✭',
            \ 'Renamed'   :'➜',
            \ 'Unmerged'  :'═',
            \ 'Deleted'   :'✖',
            \ 'Dirty'     :'✗',
            \ 'Ignored'   :'☒',
            \ 'Clean'     :'✔︎',
            \ 'Unknown'   :'?',
            \ }

" Terminal
Plugin 'voldikss/vim-floaterm'
let g:floaterm_keymap_new = '<F7>'
let g:floaterm_keymap_prev = '<F8>'
let g:floaterm_keymap_next = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_kill = '<F10>'
if has('win64') || has('win32')
    let g:floaterm_shell='powershell'
endif


call vundle#end()

"===KeyMap=============================

" Move Between Windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Ctrl + Key Move
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>
" Space Search
map <Space> /
" Shift Q = Quit
map <silent> <S-q> :q<CR>
" Enter = Start New Line
map <CR> o<Esc>
" ; = Command
map ; :
" Term Esc = Exit
tnoremap <Esc> <C-\><C-n>

"===Other========================================
try
    set background=dark
    colorscheme onedark
catch
endtry

set autoindent
set nowrap
" Tab 4 Spaces
set expandtab
set shiftwidth=4
set tabstop=4
" Match Case
set ignorecase
" Show Line Number
set number
" No Cache
set nobackup
set noswapfile
" Keep Line Separator
set noeol
