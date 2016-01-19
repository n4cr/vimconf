" this is a comment
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

Plugin 'mxw/vim-jsx'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"Bundle 'git://github.com/davidhalter/jedi-vim'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ******** Vundle
"echom ">^.^<"
" boolean operation: :set no<name>
set t_Co=256
set number " show line number
set nornu " relative number
set sr " shift round to auto indent correctly
set showmatch "show the matched prantez
set matchtime=5 " time to show the prantez 
set hlsearch " highlight matches
set ignorecase " case insensitive search
set incsearch
set viminfo='50,<1000,s100,:0,n~/.viminfo " marks will be remembered for 50 files
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
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <leader>l dd
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vmap b :!git blame =expand("%:p")  \| sed -n =line("',=line("'>") p
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
"disable arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
nnoremap <left> :tabprevious <cr>
nnoremap <right> :tabnext <cr>
" nnoremap <tab> <c-w>w " adding this blocks forward jumps
" nnoremap <S-tab> <c-I> " jumpp back on shift tab
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
set softtabstop=4
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
let g:jsx_ext_required = 0

set backspace=indent,eol,start
filetype plugin on
let g:pydiction_location = '/store/software/vim_plugin/complete-dict'

" Uncomment the following to have Vim jump to the last position when                                                       
" " reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

