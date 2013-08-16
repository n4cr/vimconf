" this is a comment
"echom ">^.^<"
" boolean operation: :set no<name>
set number " show line number
set nornu " relative number
set sr " shift round to auto indent correctly
set showmatch "show the matched prantez
set matchtime=5 " time to show the prantez 
" remove lines by pressing -
"map <c-d> dd
noremap <space> viw
" move lines up/down
noremap - ddp
noremap _ ddkkp

let mapleader = ","
let maplocalleader = "\\"
nnoremap <leader>d dd
nnoremap <leader>U viwU
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <leader>l dd
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"nnoremap <leader>o :vsplit<cr>:E<cr>
" this is used to quite a block but has errors
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
" goto begining of line
nnoremap H V<esc>`<
nnoremap L V<esc>`>
nnoremap J <c-d> 
nnoremap K <c-u>

inoremap jk <c-[>
iabbrev tset test
inoremap <esc> <nop>
inoremap <c-c> <nop>
"disable arrow keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <tab> <c-w>w
let c='a'
" this scringt is to enable alt key in gnome terminal
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw
inoremap <A-h> <esc>Xi
inoremap <A-p> dd
set timeout ttimeoutlen=50
"reindent file after sve
"
augroup filetypes
    autocmd!
"autocmd BufWritePre *.html :normal gg=G
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType python :iabbrev <buffer> iff if:<left> 
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType html nnoremap <buffer> <localleader>c I<!-- <esc>A --><esc>
augroup END
"movement commnd to p to refer inside prantezs
onoremap p i(

set laststatus=2 " show the status line even with 1 tab
set statusline=%F
set statusline+=%= 
set statusline+=FileType:\ 
set statusline+=%y\ 
set statusline+=[%04l]\/
set statusline+=%L\ 
set statusline+=[%c]
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
nnoremap <A-,> <c-w><
nnoremap <A-.> <c-w>>
"-----------------
set numberwidth=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on
filetype on
filetype plugin on
noremap x "_x
nnoremap <A-k> :m-2<CR>==
nnoremap <A-j> :m+<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
set backspace=indent,eol,start
filetype plugin on
let g:pydiction_location = '/store/software/vim_plugin/complete-dict'

