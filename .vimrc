:autocmd!
:augroup buffscreen
:autocmd!
:autocmd BufEnter *.* silent! lcd %:p:h
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
set t_Co=256 " enable 256 colors
set t_ut=
set laststatus=2
set splitbelow
set splitright
set clipboard=unnamed
set autochdir " set the vim dir to the file current dir
"set termwinkey=<C-alt>
set hidden

let g:slime_target = "vimterminal"
let g:ipython_cell_delimit_cells_by = "tags"
let g:ipython_cell_tag = "# <codecell>"

let g:jupyter_mapkeys = 0 "no key binding using with jupyter 
"netrw line number
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
" show hidden files.
let NERDTreeShowHidden=1

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"plugin installation

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'ycm-core/YouCompleteMe', {'do': './install.py' }
"Plug '/home/mpaulson/personal/vim-be-good'
Plug 'jupyter-vim/jupyter-vim' " this install jupyter for vim
Plug 'preservim/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
"Plug 'plytophogy/vim-virtualenv'
"Plug 'PieterjanMontens/vim-pipenv'

call plug#end()
"plugin installation end
"---------------------------------------
"this ensures that YCM closes when done
let g:ycm_autoclose_preview_window_after_completion=1

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Change python path for vim.
"let pipenv_venv_path = system('pipenv --venv')
"if shell_error == 0
"  let venv_path = substitute(pipenv_venv_path, '\n', '', '')
"  let $PYTHONPATH=venv_path . '/lib/python3.8/site-packages'
"  let $PATH=venv_path . '/bin:' . $PATH
"  let g:ycm_python_binary_path = venv_path . '/bin/python'
"else
"  let g:ycm_python_binary_path = 'python'
"endif

:augroup latexgroup

    "clear all autocommands
    :autocmd!
    "load the vimrc for latex files
    :autocmd BufNewFile,BufRead *.tex :source ~/.texvimrc

:augroup END

:augroup pythongroup

    "clear all autocommands
    :autocmd!
    "load the vimrc for python files
    :autocmd BufNewFile,BufRead *.py,*.pyw :source ~/.pyvimrc

:augroup END


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
inoremap <leader>cc <esc>0i"<esc>$a

"buffers toggle, increase and decrease buffers
nnoremap <leader><leader> :wincmd w<cr>
nnoremap <leader>+ :vertical resize +10<cr>
nnoremap <leader>- :vertical resize -10<cr>

" Nerdtree mappings
"
noremap <C-n> :NERDTreeToggle<cr>
