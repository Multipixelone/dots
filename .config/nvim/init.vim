" NVIM Config File by Multipixelone
" Authors
"   Finn Rutis 2020-05-01
" Last Modified
"   Finn Rutis 2021-10-21
"

" Install Plugged if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Some MACOS Stuff
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define Vim Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Plug 'reedes/vim-colors-pencil'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'lervag/vimtex'
" Plug 'Valloric/YouCompleteMe'
" Plug 'w0rp/ale'
" Plug 'vim-syntastic/syntastic'
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
" Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'jiangmiao/auto-pairs'
" Plug 'vim-syntastic/syntastic'
Plug 'yggdroot/indentline'
Plug 'junegunn/seoul256.vim'
" Plug 'amix/vim-zenroom2'
Plug 'lilydjwg/colorizer'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'ryanoasis/vim-devicons'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
" Plug 'easymotion/vim-easymotion'
Plug 'lervag/vimtex'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

" Lightline Stuff!
let g:lightline = {
  \   'colorscheme': 'powerline',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}

" Lightline tabling
" let g:lightline.tabline = {
  " \   'left': [ ['tabs'] ],
  " \   'right': [ ['close'] ]
  " \ }

" Lightline Bufferline
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" Airline stuff
let g:airline_disabled = 1 
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1

" NERDTree with F2
map <F2> :NERDTreeToggle<cr>

" Indent 
let g:indentLine_char = '▏'

" Vimtex Config
let g:vimtex_view_method = 'zathura'

" Limelight config
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Activate Limelight when entering Goyo
function! s:goyo_enter()
	colorscheme seoul256
    set background=dark
    Limelight
endfunction

function! s:goyo_leave()
	colorscheme nord
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" autocmd BufNewFile *.tex 0r ~/templates/latex.tex

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lines of history
set history=500

" Highlight cursor line
" set nocursorline
" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" set cursorline

" No timeout
set notimeout

" Use system clipboard
set clipboard=unnamedplus

" Highlight matching pairs of brackets
set matchpairs+=<:>

" Enable filetype plugins
filetype plugin on
filetype indent on

" Outside change autoread
set autoread

" Don't show mode
set noshowmode

" Spell checking
set spelllang=en

" Always show last statusline
set laststatus=2

" Turn on Relative Numbers
set number relativenumber
j
" Allow all colors
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 7 lines to the cursor
set so=7

" Turn on WiLd menu
set wildmenu

" Always show Current Position
set ruler

" Make cmd bar taller
set cmdheight=2

" Buffer hide when abandoned
set hid

" Make backspace not stupid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Mouse support
set mouse=a

" Search stuff
set ignorecase
set smartcase
set hlsearch
set incsearch

" Don't redraw when macro execute
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting! :)
syntax enable

" 256 colors
set t_Co=256

" Encoding
set encoding=utf8

" Colorscheme
colorscheme lena

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs and what-not
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces and not tabs
set expandtab

" Be smart!
set smarttab

" Auto indent
set autoindent

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Indent smartness
set ai
set si
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader setup
let mapleader = ","
let g:mapleader = ","

" Note taking
map <leader>q :tabnew ~/buffer.md<cr>

" Leader save :)
nmap <leader>w :w!<cr> 

" Space to search
map <space> /
map <c-space> ?

" Leader spellcheck
map <leader>sc :spellcheck on

" :W sudo saves file
command W w !sudo tee % > /dev/null

" Allow paste mode toggle
set pastetoggle=<F3>

" Quick write sessions
map <F8> :mksession! ~/.vim_session<cr>
" And load session with F3
map <F9> :source ~/.vim_session<cr>

" Save with ctrl+s
nmap <C-S> :w<cr>
vmap <C-S> <esc>:w<cr>
imap <C-S> <esc>:w<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source ~/.config/nvim/statusline.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
