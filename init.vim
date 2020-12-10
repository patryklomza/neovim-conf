
call plug#begin('~/.config/nvim/plugged')

if exists('g:vscode')
	Plug 'patryklomza/vscode-easymotion'
else
	Plug 'easymotion/vim-easymotion'
	Plug 'itchyny/lightline.vim'
endif
Plug 'tpope/vim-surround'
call plug#end()

nnoremap <SPACE> <Nop>
let mapleader=" "

if !exists('g:vscode')
	set noshowmode
endif

if exists('g:vscode')
	source $HOME/.config/nvim/vscode/settings.vim
endif
