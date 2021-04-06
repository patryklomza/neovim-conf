
call plug#begin('~/.config/nvim/plugged')

if exists('g:vscode')
	Plug 'patryklomza/vscode-easymotion'
else
	Plug 'easymotion/vim-easymotion'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'kien/ctrlp.vim'
  Plug 'ap/vim-buftabline'
  Plug 'itchyny/lightline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'lifepillar/vim-solarized8'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'gruvbox-community/gruvbox'
endif

Plug 'tpope/vim-surround'
call plug#end()

" general settings
set nowrap
set ignorecase
set smartcase
set incsearch
set scrolloff=16
set nohlsearch
set noerrorbells


" show line numbers
set nu

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" buffer conf
set hidden

nnoremap <C-B> :bnext<CR>
nnoremap <C-]> :bprev<CR>

" proper indentation following pep8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" indentation conf for other languages
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" mark unnecessary white space
highlight! link pythonSpaceError NONE

" Enable folding
set foldmethod=indent
set foldlevel=99

" nerdtree conf
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" airline buffers
let g:airline#extensions#tabline#enabled = 1

" space as leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

" theme
let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'FugitiveHead'
        \ },
  \ }

if !exists('g:vscode')
	set noshowmode
  set background=light
	colorscheme papercolor
endif

if exists('g:vscode')
	source $HOME/.config/nvim/vscode/settings.vim
endif
