set mouse=a
set syntax=on
set number

syntax on
" color papaercolor
set background=dark
highlight Normal ctermfg=grey ctermbg=black
colorscheme PaperColor

let mapleader=" "
" copy to clipboard
set clipboard=unnamedplus

" map
inoremap <C-g><C-g> <C-x><C-o>
inoremap <Leader>y "+y
inoremap <Leader>p "+p
"inoremap <Leader>d :NERDTree<CR>
nmap <silent> <C-d> :NERDTree<CR>
"imap <silent> <C-q> :q!<CR>
nmap <silent> <C-q> :q!<CR>
filetype plugin on  
let g:go_disable_autoinstall = 0
let g:ctrlp_map = '<c-p>'

" Highlight
" let g:go_highlight_functions = 1  
" let g:go_highlight_methods = 1  
" let g:go_highlight_structs = 1  
" let g:go_highlight_operators = 1  
" let g:go_highlight_build_constraints = 1  
"
" 
let g:pymode_rope = 0

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'https://github.com/w0rp/ale.git'
" Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/python-mode/python-mode'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'https://github.com/powerline/powerline'
" Plug 'https://github.com/Shougo/neocomplete.vim.git'
Plug 'https://github.com/google/yapf.git'
Plug 'https://github.com/JetBrains/ideavim.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tudorprodan/pyfinder.vim.git'
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/NLKNguyen/papercolor-theme' 
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'https://github.com/kien/ctrlp.vim.git'


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'https://github.com/zchee/deoplete-go'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:deoplete#enable_at_startup = 1
autocmd FileType python set colorcolumn=120
