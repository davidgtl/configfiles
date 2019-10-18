set clipboard=unnamedplus
syntax on
:set number relativenumber

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'tyrannicaltoucan/vim-deep-space'

call vundle#end()
filetype plugin indent on

"set background=dark
"set termguicolors
"colorscheme deep-space
"let g:airline_theme='deep_space'

"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
