call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'hrsh7th/nvim-cmp'
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'airblade/vim-gitgutter'
call plug#end()

colo elflord
syntax on 
set number
set autoindent
set mouse=a              
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set title
set ignorecase
let mapleader=","
" telescope	
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
