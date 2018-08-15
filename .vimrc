set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'nanotech/jellybeans.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'Rykka/colorv.vim'
Plugin 'tpope/vim-obsession'
Plugin 'dhruvasagar/vim-prosession'

Plugin 'AutoClose'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'

" testing color packages
Plugin 'kaicataldo/material.vim'
Plugin 'aradunovic/perun.vim'
Plugin 'ajh17/spacegray.vim'

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

let mapleader=","

""set termguicolors
set background=dark
""colorscheme jellybeans
""colorscheme monokai
colorscheme spacegray

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp


"ui
set ruler         "ruler on
set nu            "line numbers on
set nowrap        "line wrapping off
set laststatus=2  "always show the statusline
set cmdheight=2
set encoding=utf-8
"set statusline+=%F

"behaviors
syntax enable
set autoread           "automatically reload changes if detected
set wildmenu           "turn on wild menu
set hidden             "change buffer - without saving
set history=768        "number of things to remember in history.
set cf                 "enable error files & error jumping.
set clipboard+=unnamed "yanks go on clipboard instead.
set autowrite          "writes on make/shell commands
set timeoutlen=350     "time to wait for a command (after leader for example)
set foldlevelstart=99  "remove folds
set formatoptions=crql

"text formatting
set backspace=2  "delete everything with backspace
set cindent      "c style indents
set autoindent   "indent new lines
set shiftwidth=4 "tabs under smart indent
set tabstop=4
set softtabstop=4
set smarttab
set smartindent
set expandtab

"searching
set ignorecase "case insensitive search
set smartcase "non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.so,*.pyc,.svn,.hg,.git

"visual
set showmatch  "show matching brackets.
set matchtime=2 "how many tenths of a second to blink

"annoying shit
set noerrorbells
set novisualbell
set t_vb=

"blasphemous input method
set mousehide "hide mouse after chars typed
set mouse=a "mouse in all modes

"speed up auto-completion
set complete=.,w,b,u,U

"common typos and simplification
"commanr W w
"command Q q

map <F1> <Esc>
imap <F1> <Esc>

""doc lookup easy to fat finger
"nmap K k
"vmap K k

"easier line completion
imap <C-l> <C-x><C-l>

"silly shift key
""nnoremap ; :
""vnoremap ; :

"%% in command mode to print file path
cnoremap %% <C-R>=expand('%:h').'/'<cr>



"leader shit

"toggle spelling mode with ,s
nmap <silent> <leader>s :set spell!<CR>

"edit vimrc with ,v
nmap <silent> <leader>v :e ~/.vimrc<CR>

"edit zshrc with ,z
nmap <silent> <leader>z :e ~/.zshrc<CR>

"window movement
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"previous window
nmap <silent> <A-p> :wincmd p<CR>

"equalize window sizes
nmap <silent> <leader>w= :wincmd =<CR>

"window splitting
nmap <silent> <leader>sh :split<CR>
nmap <silent> <leader>sv :vsplit<CR>

"buffffer stuff
nmap <silent> <leader>b :bn<CR>
nmap <silent> <leader>B :bN<CR>
nmap <silent> <leader>db :bd<CR>

"sometimes one hand jumps the gun
nmap <silent> <leader>hs :split<CR>
nmap <silent> <leader>vs :vsplit<CR>
nmap <silent> <leader>sc :close<CR>


"auto commands

if has("autocmd")
  "no formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  "stfu about untitled documents
  autocmd FocusLost silent! :wa

endif




"plugin stuff

"syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

"nerdtree
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"indent guides
let g:indent_guides_enable_on_vim_startup=1


"tabularize
nmap <Leader>t= :Tabularize/ =<CR>
vmap <Leader>t= :Tabularize/ =<CR>

nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>

nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>

nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>


"fugitive
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gx :wincmd h<CR>:q<CR>


"zoom window to full size
nmap <silent> <leader>wo :ZoomWin<CR>


""command-t
"nnoremap <leader>t :CommandT<CR>
"nnoremap <leader>u :CommandT %%<CR>
"let g:CommandTMaxHeight = 15

"ctrl-p
nnoremap <leader>t :CtrlP<CR>


"jellybeans color stuff

"colorize css attributes
hi! link cssAttr Constant
hi Normal ctermbg=NONE
hi NonText ctermbg=black



"functions

"cleanup trailing whitespace
map <leader>ws :%s/\s\+$//e<CR>
command! FixTrailingWhiteSpace :%s/\s\+$//e


function! DoPrettyXML()
    "save the filetype so we can restore it later
    let l:origft = &ft
    set ft=
    "delete the xml header if it exists. This will
    "permit us to surround the document with fake tags
    "without creating invalid xml.
    1s/<?xml .*?>//e
    "insert fake tags around the entire document.
    "This will permit us to pretty-format excerpts of
    "XML that may contain multiple top-level elements.
    0put ='<PrettyXML>'
    $put ='</PrettyXML>'
    silent %!xmllint --format -
    "xmllint will insert an <?xml?> header. it's easy enough to delete
    "if you don't want it.
    "delete the fake tags
    2d
    $d
    "restore the 'normal' indentation, which is one extra level
    "too deep due to the extra tags we wrapped around the document.
    silent %<
    "back to home
    1
    "restore the filetype
    exe "set ft=". l:origft
endfunction
command! PrettyXML call DoPrettyXML()



"custom bindings

"autoindent
map <leader>= :Tab/ =<CR>
map <leader>. :Tab/=><CR>


"yank text to clipboard
noremap <leader>y "+y
noremap <leader>yy "+Y

inoremap <Nul> <C-x><C-o>
imap <c-space> <C-x><C-o>

"preserve indent when pasting from clipboard
noremap <leader>p :set paste<CR>:put  +<CR>:set nopaste<CR>


let g:pymode_lint_ignore="E502,E501,E303,E302,E251,E221,E265,E202,E203,E261,E262,E201,E116"
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 0
let g:pymode_rope = 0
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_doc_bind = "<C-S-d>"
let g:pymode_breakpoint = 0

"let g:tmuxline_preset = 'powerline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


nnoremap <expr> > (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bn\<cr>" : "\<right>")
nnoremap <expr> < (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bp\<cr>" : "\<left>")

" Bclose() {{{2
" delete buffer without closing window
function! Bclose()
    let curbufnr = bufnr("%")
    let altbufnr = bufnr("#")

    if buflisted(altbufnr)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == curbufnr
        new
    endif

    if buflisted(curbufnr)
        execute("bdelete! " . curbufnr)
    endif
endfunction


set diffopt+=iwhite
set diffexpr=DiffW()
function DiffW()
    let opt = ""
    if &diffopt =~ "icase"
        let opt = opt . "-i "
    endif
    if &diffopt =~ "iwhite"
        let opt = opt . "-w " " vim uses -b by default
    endif
    silent execute "!diff -a --binary " . opt . v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction



"map <leader>T <Plug>TaskList
"let g:tlTokenList = ['#todo', 'fixme']

command Todo noautocmd vimgrep /todo\|fixme/j ** | cw
set wildignore+=**tests/**
map <leader>? :Todo<CR>


