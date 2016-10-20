" Plugins
call plug#begin("~/.config/nvim/plugged")

" colorschemes
Plug 'chriskempson/base16-vim'

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'terryma/vim-expand-region'
"Plug 'terryma/vim-multiple-cursors'
" Plug 'Shougo/unite.vim'
Plug 'Raimondi/delimitMate' " Bracket completion
Plug 'Xuyuanp/nerdtree-git-plugin' " Show git file status in nerdtree
Plug 'Yggdroot/indentLine' " Indent guide
Plug 'airblade/vim-gitgutter' " +/- git gutter on the left
Plug 'benekastah/neomake' " Async runner
Plug 'easymotion/vim-easymotion'
Plug 'gioele/vim-autoswap' " Painless swap file management
Plug 'godlygeek/tabular' " Align text
Plug 'gregsexton/gitv' " Visual git tree
Plug 'mileszs/ack.vim' " Searching
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'scrooloose/nerdtree' " File drawer
" Plug 'sirver/ultisnips' " Snippet
Plug 'tpope/vim-abolish' " Smart text replacement and spelling correction
Plug 'tpope/vim-commentary' " Comment toggle
Plug 'tpope/vim-fugitive' " git plugin
Plug 'tpope/vim-obsession' " Save vim session
Plug 'tpope/vim-repeat' " Use . to repeat more action
Plug 'tpope/vim-surround' " Surround text with stuff
Plug 'valloric/youcompleteme' " Completion suggestion
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Status line theme
Plug 'kana/vim-textobj-user' " Customer text object
Plug 'julian/vim-textobj-variable-segment' " Variable text object
Plug 'michaeljsmith/vim-indent-object' " Indent text object

" Languages specific
Plug 'ap/vim-css-color'
Plug 'elmcast/elm-vim'
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'moll/vim-node'
Plug 'mtscout6/vim-cjsx'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
"Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'wavded/vim-stylus'

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

" Disable default elm-vim mapping
let g:elm_setup_keybindings = 0

" code folding settings
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

set undofile                " Save undo's after file closes
set undodir=$HOME/.vimundo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

if has('keyboard')
    set mouse=a
    " set ttymouse=xterm2
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=7 " lines of text around cursor
set sidescrolloff=10 " number of char around cursor
set cmdheight=1 " command bar height

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " Highlight search result
set incsearch " set incremental search, like modern browsers
set lazyredraw " don't redraw while executing macros

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

" You Complete me
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_semantic_triggers = {'elm' : ['.']}

"" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NERDTree setup

"" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Neomake
let g:neomake_logfile=$HOME.'/neomake.log'
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" Multi-cursor
"let g:multi_cursor_quit_key='<Esc>'

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
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

" Ag searcher using Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Visual block indent/outdent
xnoremap <  <gv
xnoremap >  >gv

" open up command history and toggle insert mode
nmap ; q:i

" open up command history
nnoremap <Up> :<Up>
nnoremap <Down> :<Down>
vnoremap <Up> :<Up>
vnoremap <Down> :<Down>

" Repeat last macro(option + ')
nmap æ @@
" Exec q macro
nmap ' @q

" Delete without copying
nmap <C-d> "_d
nmap <C-D> "_dd
vmap <C-d> "_d

" Paste without copying in visual mode
vmap p "_dP
 
" Saving
nmap <silent> <C-s> :w<CR>
imap <silent> <C-s> <Esc>:w<CR>a

" Close buffer
nmap <silent> <C-q> :bd!<CR>
imap <silent> <C-q> <C-c>:bd!<CR>

" clear higlighting and refresh
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" Super silent
command! -nargs=1 Silent
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

" git 
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gd :Gvdiff<CR>
nmap <Leader>gh :Gvdiff HEAD<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gl :silent Glog<CR>
nmap <Leader>gv :Gitv<CR>
nmap <C-J> :cnext<CR>
nmap <C-K> :cprevious<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>ga :Gcommit --amend<CR>
" Sync
nmap <Leader>gp :Gpull<CR>:Gpush<CR>
vmap + :diffput<Cr>
vmap - :diffget<Cr>

" EasyMotion
map s <Plug>(easymotion-s2)
map f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w <Plug>(easymotion-w)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Folding method
nmap <Leader>zs :set foldmethod=syntax<CR>
nmap <Leader>zi :set foldmethod=indent<CR>

nmap <silent> <Leader>[ :NERDTreeToggle<CR>
nmap <C-p><C-w> :execute "CtrlP ".$CODE_DIR <CR>

" Buffer navigation
nmap <silent> { :bprevious<CR>
nmap <silent> } :bnext<CR>

" Quit
nmap <silent> <ESC> :q!<CR>
" Resource init.vim and refresh file
nmap <silent> <F5> :source ~/.config/nvim/init.vim<CR>:edit<CR>

" Split navigation
map <silent> ˙ :call WinMove('h')<cr>
map <silent> ∆ :call WinMove('j')<cr>
map <silent> ˚ :call WinMove('k')<cr>
map <silent> ¬ :call WinMove('l')<cr>

" Lint issue navigation
nmap <silent> <Leader>/ :ll<CR>
nmap <silent> <Leader>n :lnext<CR>

" Comment toggle, option + /
map ÷ gcc

" Scroll faster
nnoremap <C-y> 6<C-y>
nnoremap <C-e> 6<C-e>

" Bracket auto new line
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap (<CR> (<CR>)<Esc>O

" Number
nnoremap = <C-A>
nnoremap - <C-x>

" Join line
nmap K kJ

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

" Open all file in quick fix
function! Qfa()
  if empty(getqflist())
    return
  endif
  let s:prev_val = ""
  for d in getqflist()
    let s:curr_val = bufname(d.bufnr)
    if (s:curr_val != s:prev_val)
      exec "edit " . s:curr_val
    endif
    let s:prev_val = s:curr_val
  endfor
endfunction

command! Qfa call Qfa()
