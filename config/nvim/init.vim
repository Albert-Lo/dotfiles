" Albertins
call plug#begin("~/.config/nvim/plugged")

" colorschemes
Plug 'chriskempson/base16-vim'
Plug 'dikiaap/minimalist'
Plug 'kristijanhusak/vim-hybrid-material'

Plug 'terryma/vim-expand-region'
Plug 'Raimondi/delimitMate' " Bracket completion
Plug 'Xuyuanp/nerdtree-git-plugin' " Show git file status in nerdtree
Plug 'Yggdroot/indentLine' " Indent guide
Plug 'airblade/vim-gitgutter' " +/- git gutter on the left
Plug 'benekastah/neomake' " Async runner
Plug 'easymotion/vim-easymotion'
Plug 'gioele/vim-autoswap' " Painless swap file management
Plug 'godlygeek/tabular' " Align text
Plug 'mileszs/ack.vim' " Searching
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'scrooloose/nerdtree' " File drawer
Plug 'tpope/vim-abolish' " Smart text replacement and spelling correction
Plug 'tpope/vim-commentary' " Comment toggle
Plug 'tpope/vim-fugitive' " git plugin
Plug 'tpope/vim-obsession' " Save vim session
Plug 'tpope/vim-repeat' " Use . to repeat more action
Plug 'tpope/vim-surround' " Surround text with stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Status line theme
Plug 'kana/vim-textobj-user' " Customised text object
Plug 'julian/vim-textobj-variable-segment' " Variable text object
Plug 'tkhren/vim-textobj-numeral' " Number text object
Plug 'michaeljsmith/vim-indent-object' " Indent text object
Plug 'ntpeters/vim-better-whitespace' " Show and trim whitespace
Plug 'kshenoy/vim-signature' " Display line marks
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file search
Plug 'dyng/ctrlsf.vim' " Better global search
Plug 'cohama/agit.vim' " Better git log
Plug 'unblevable/quick-scope' " Better inline movement
Plug 'metakirby5/codi.vim' " Live evaluation
Plug 'tyok/nerdtree-ack' " Add search to nerdree

" Tags and stuff
Plug 'majutsushi/tagbar' " Ctags
Plug 'lukaszkorecki/CoffeeTags' " Coffeescript tags

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
autocmd CompleteDone * pclose
"set splitbelow
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jsx set filetype=javascript.jsx

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
" Disable default elm-vim mapping
let g:elm_setup_keybindings = 0

" Signature + Git gutter
let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerLineHL = 1

" Allow bold
let g:enable_bold_font = 1


" CtrlP
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bin|build|public)$',
  \ 'file': '\v\.(exe|so|dll|tmp|csv|rdb)$',
  \ }

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
syn keyword Todo contained TODO HACK FIXME UNDONE XXX

"set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
execute "set background=".$BACKGROUND
" colorscheme minimalist
colorscheme base16-material-dark
" execute "colorscheme ".$THEME

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

let g:python_host_prog = '/usr/local/bin/python3'

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

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

vmap v <Plug>(expand_region_expand)

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
nmap … q:i

" Switch 0 and ^
nnoremap 0 ^
nnoremap ^ 0

" open up command history
nnoremap <Up> :<Up>
nnoremap <Down> :<Down>
vnoremap <Up> :<Up>
vnoremap <Down> :<Down>

" Repeat last macro(option + shift + ,)
nmap ¯ @@

" Exec q macro (option + ,)
nmap ≤ @q

" Ctrl Shift f from SUBL2
nmap <C-f> :CtrlSF

" Get current selection and find in the file or globally
vmap <C-f> "xy/<C-r>x
vmap <C-g> "fy:CtrlSF <C-r>f

" Short cut for word text object of the above visual mode mappings
nmap * viw<C-f>
nmap # viw<C-g>

" Get current selection and do replace in the file with prompt
vmap <C-r> "fy:%s/<C-r>f//gc<Left><Left><Left>

" Delete without copying
nmap <C-d> "_d
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
nmap <Leader>gv :silent Glog<CR>
nmap <Leader>gl :Agit<CR>
nmap <Leader>gj :cnext<CR>
nmap <Leader>gk :cprevious<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>ga :Gcommit --amend<CR>
" Sync
nmap <Leader>gp :Gpull<CR>:Gpush<CR>
vmap + :diffput<Cr>
vmap - :diffget<Cr>

" EasyMotion
map s <Plug>(easymotion-s2)
" map f <Plug>(easymotion-fl)
" map F <Plug>(easymotion-Fl)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w <Plug>(easymotion-w)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" File(all lines) text object hack
nmap yaa :%y<CR>
nmap daa :%d<CR>

" Copy all to new buffer in new window
nmap <C-o> :call CopyToNewBuffer('')<cr>
" Filter out lines with regex or selection
nmap <C-m><C-f> :call CopyToNewBuffer('//')<Left><Left><Left>
vmap <C-m><C-f> "xy:call CopyToNewBuffer('/<C-r>x/')<cr>

" Folding method
nmap <Leader>zs :set foldmethod=syntax<CR>
nmap <Leader>zi :set foldmethod=indent<CR>

" Trim whitespace
nmap <Leader>t :StripWhitespace<CR>:w<CR>

nmap <silent> <Leader>[ :NERDTreeFind<CR>
nmap <silent> <Leader>] :TagbarToggle<CR>
nmap <C-p><C-w> :execute "CtrlP ".$CODE_DIR <CR>

" Buffer navigation
nmap <silent> { :bprevious!<CR>
nmap <silent> } :bnext!<CR>

" Quit
nmap <silent> <ESC> :q!<CR>
" Resource init.vim and refresh file
nmap <silent> <Leader>r :source ~/.config/nvim/init.vim<CR>:edit<CR>

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
nnoremap = <C-a>
nnoremap - <C-x>

" Join line
nmap K kJ

" Next marker
nmap M ]'

" Syntax specific
" React/JSX
" Self closing tag
nmap <Leader>sc 0f>ald$i /<Esc>
imap <C-i> <Esc><Leader>sc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
  let t:curwin = winnr()
  let t:curfiletype = &filetype
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      vnew
    else
      new
    endif
    exec "wincmd ".a:key
    exec "set filetype=".t:curfiletype
  endif
endfunction

function! CopyToNewBuffer(regex)
  let l:curfiletype = &filetype
  let l:lineno = line(".")
  %y z
  enew
  exec "set filetype=".l:curfiletype
  silent %pu! z
  exec "".l:lineno
  if (strlen(a:regex))
    exec "silent v" . a:regex . "d"
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


" Rotating text for sceen saving
"""""""""""""""""""""""
" Start
"""""""""""""""""""""""
function! s:RotateString(string)
  let split_string = split(a:string, '\zs')
  return join(split_string[-1:] + split_string[:-2], '')
endfunction

function! s:RotateLine(line)
  return substitute(
      \ a:line,
      \ '^\(\s*\)\(.\{-}\)\(\s*\)$',
      \ '\=submatch(1) . <SID>RotateString(submatch(2)) . submatch(3)',
      \ ''
  \ )
endfunction

function! s:RotateLines()
  let saved_view = winsaveview()
  let first_visible_line = line('w0')
  let last_visible_line = line('w$')
  let lines = getline(first_visible_line, last_visible_line)
  DisableWhitespace
  try
    while 1 " <C-c> to exit
      call map(lines, '<SID>RotateLine(v:val)')
      call setline(first_visible_line, lines)
      redraw
      sleep 30m
    endwhile
  finally
    if &modified
      silent undo
    endif
    call winrestview(saved_view)
    EnableWhitespace
  endtry
endfunction

nnoremap <silent> <Plug>(RotateLines) :<C-u>call <SID>RotateLines()<CR>

nmap \r <Plug>(RotateLines)

"""""""""""""""""""""""
" End
"""""""""""""""""""""""
