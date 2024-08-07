syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
" nnoremap <leader><space> :nohlsearch<CR>
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" Disable autocomplete scratch preview window
set completeopt-=preview

" send yanked lines to system clipboard
"set clipboard+=unnamedplus
"set clipboard=unnamed

let mapleader=","
inoremap jk <esc>
au BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl

" Plugin stuff
" vim-plug
" add plug line then run :PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim', { 'as': 'nord' }
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
" Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'

call plug#end()

map <C-t> :NERDTreeToggle<CR>
set background=dark
colorscheme gruvbox

" disable auto-comment on new line
augroup NoAutoComment
    au!
    au FileType * setlocal formatoptions-=cro
augroup end

" autocmd vimenter * ++nested colorscheme gruvbox
autocmd FileType typescript setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
