:autocmd!
:augroup buffscreen
:   autocmd!
:   autocmd BufEnter *.* silent! lcd %:p:h
:augroup END

syntax on "this activates syntax coloring 
set noerrorbells "removes sounds
set belloff=all "this is remove the sound beeps
set cmdheight=3 " this sets the command line height
set tabstop=4 softtabstop=4 " makes the tab to 4 spaces
set shiftwidth=4
set expandtab
set autoindent
set nu
set wrap
set textwidth=79 "set the maximum text width
set backspace=start,eol,indent " backspace options
filetype plugin indent on
set smartcase
set noswapfile " stops the swap files creation
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile
set relativenumber
set nohls " highlighted search
set showcmd " shows commands
set foldmethod=indent " this is for organizing codes
set foldlevel=99
set fileformat=unix
set encoding=utf-8 " set text editing
set fileencoding=utf-8
set termguicolors
set t_Co=256 " enable 256 colors
set t_ut=
set laststatus=2
set splitbelow
set splitright
set clipboard=unnamed
set autochdir " set the vim dir to the file current dir
set hidden
set linebreak
set ignorecase
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set cursorline
"highlight clear cursorLine
"highlight cursorLineNR ctermbg=green guibg=green
set background=dark
set title

"------------------------------------------------------------------------------
"plugin installation
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'ycm-core/YouCompleteMe', {'do': './install.py' }
"Plug 'jupyter-vim/jupyter-vim' " this install jupyter for vim
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
"Plug 'akiomik/git-gutter-vim' 
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'junegunn/limelight.vim'
call plug#end()

"------------------------------------------------------------------------------
"slime and ipython settitngs
let g:slime_target = "vimterminal"
let g:ipython_cell_delimit_cells_by = "tags"
let g:ipython_cell_tag = "# <codecell>"
let g:jupyter_mapkeys = 0 "no key binding using with jupyter 

"------------------------------------------------------------------------------
" NerdTree settings
"
" show hidden files.
let NERDTreeShowHidden=1
"fix the width
let g:NERDTreeWinSize=20
"netrw line number
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_browse_split=2
let g:netrw_banner = 0
"let g:netrw_winsize = 25
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1
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
let g:airline_powerline_fonts = 1
let g:NERDTreeGitStatusShowClean = 0
let g:NERDTreeGitStatusUntrackedFilesMode = 'normal'
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"------------------------------------------------------------------------------
"color scheme settings
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_bold = 1
let g:lightline = {'colorscheme': 'gruvbox-material'}
"let g:airline_theme='zenburn'
colorscheme gruvbox-material
let g:gruvbox_italic=1
"colorscheme gruvbox
"------------------------------------------------------------------------------
"YouCompleteMe settings
"this ensures that YCM closes when done
let g:ycm_autoclose_preview_window_after_completion=1
if executable('rg')
    let g:rg_derive_root='true'
endif


"------------------------------------------------------------------------------
"nerdtree augroup
:augroup nerdtreegroup

    "clear all autocommands
    :autocmd!
    "Open nerdtree in new tabs
"    autocmd VimEnter * NERDTree
"    autocmd BufWinEnter * NERDTreeMirror

:augroup END

"latex augroup
:augroup latexgroup

    "clear all autocommands
    :autocmd!
    "load the vimrc for latex files
    :autocmd BufNewFile,BufRead *.tex :source ~/.texvimrc

:augroup END

"python augroup
:augroup pythongroup

    "clear all autocommands
    :autocmd!
    "load the vimrc for python files
    :autocmd BufNewFile,BufRead *.py,*.pyw :source ~/.pyvimrc

:augroup END

"haskell augroup
:augroup haskellgroup

    "clear all autocommands
    :autocmd!
    "load the vimrc for python files
    :autocmd BufNewFile,BufRead *.hs :source ~/.haskellvimrc

:augroup END

"------------------------------------------------------------------------------
"Mappings
let mapleader = ' ' " this sets the leader key to space bar

"map escape key to jk
inoremap <leader>jk <esc>
vnoremap <leader>jk <esc>

"disable the escape key
inoremap <esc> <nop>
vnoremap <esc> <nop>

"disable the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"editing and sourcing .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"saving a file  and quiting a buffer
nnoremap <leader>s :w<cr>
"inoremap <leader>s <esc>:w<cr>i
nnoremap <leader>q :q!<cr>

"commenting a line in vim file
nnoremap <leader>cc 0i"<esc>$
nnoremap <leader>cx mq0x`q
inoremap <leader>cx <esc>mq0x`qi
inoremap <leader>cc <esc>0i"<esc>$a

"buffers toggle, increase and decrease buffers
nnoremap <leader>hh :wincmd h<cr>
nnoremap <leader>ll :wincmd l<cr>
nnoremap <leader>jj :wincmd j<cr>
nnoremap <leader>+ :vertical resize +10<cr>
nnoremap <leader>- :vertical resize -10<cr>
nnoremap <leader>-- :resize -10<cr>
nnoremap <leader>++ :resize +10<cr>

" Nerdtree mappings
noremap <C-n> :NERDTreeToggle<cr>
noremap <leader><leader> :NERDTreeRefreshRoot<cr>

" Terminal mappings
tnoremap <C-k> <c-w>k
