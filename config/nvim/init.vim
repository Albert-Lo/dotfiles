" Plugins
call plug#begin("~/.config/nvim/plugged")

" colorschemes
Plug 'chriskempson/base16-vim'

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'mileszs/ack.vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'gregsexton/gitv'
Plug 'godlygeek/tabular'
Plug 'Shougo/unite.vim'
Plug 'gioele/vim-autoswap'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-obsession'

Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'moll/vim-node'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'wavded/vim-stylus'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'kchmck/vim-coffee-script'


call plug#end()

filetype plugin indent on
set backspace=indent,eol,start
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set clipboard=unnamed
set ttyfast
let mapleader = " "

autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jsx set filetype=javascript.jsx

" code folding settings
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

if has('mouse')
    set mouse=a
    " set ttymouse=xterm2
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=7 " lines of text around cursor
set cmdheight=1 " command bar height

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " Highlight search result
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" switch syntax highlighting on
syntax on

"set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
execute "set background=".$BACKGROUND
execute "colorscheme ".$THEME

set number
set autoindent
set smartindent
set cursorline
set nowrap
set title

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups, and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set nobackup
"set nowritebackup
"set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" NERDTree setup

"" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => StatusLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2 " show the satus line all the time

" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0

" Control P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ag searcher using Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Visual block indent/outdent
xnoremap <  <gv
xnoremap >  >gv

nmap ; q:i
nmap ` q:<Up><CR>
nnoremap <Up> :<Up>
nnoremap <Down> :<Down>
vnoremap <Up> :<Up>
vnoremap <Down> :<Down>
nmap ' @@
nmap " @q
 
nmap <silent> <C-s> :w<CR>
imap <silent> <C-s> <Esc>:w<CR>a
nmap <silent> <C-q> :bd!<CR>
imap <silent> <C-q> <C-c>:bd!<CR>

nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gd :Gdiff<CR>

nmap <Leader>fs :set foldmethod=syntax<CR>
nmap <Leader>fi :set foldmethod=indent<CR>

nmap <silent> <Leader>[ :NERDTreeToggle<CR>
nmap <C-p><C-w> :execute "CtrlP ".$CODE_DIR <CR>

nmap <silent> { :bprevious<CR>
nmap <silent> } :bnext<CR>

nmap <silent> <ESC> :q!<CR>
nmap <silent> <F5> :source ~/.config/nvim/init.vim<CR>

map <silent> ˙ :call WinMove('h')<cr>
map <silent> ∆ :call WinMove('j')<cr>
map <silent> ˚ :call WinMove('k')<cr>
map <silent> ¬ :call WinMove('l')<cr>

map ÷ <Leader>ci

nnoremap <C-y> 2<C-y>
nnoremap <C-e> 2<C-e>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
