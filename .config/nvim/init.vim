call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'dracula/vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lualine/lualine.nvim'
"" Auto Indnt and close plugin
Plug 'm4xshen/autoclose.nvim'
"python notebooks
Plug 'kiyoon/jupynium.nvim', { 'do': 'pip3 install --user .' }
" Plug 'kiyoon/jupynium.nvim', { 'do': 'uv pip install . --python=$HOME/.virtualenvs/jupynium/bin/python' }
" Plug 'kiyoon/jupynium.nvim', { 'do': 'conda run --no-capture-output -n jupynium pip install .' }
Plug 'rcarriga/nvim-notify'   " optional
Plug 'stevearc/dressing.nvim' " optional, UI for :JupyniumKernelSelect"
"" CMP 
" Native LSP configs
" Mason core
Plug 'williamboman/mason.nvim'

" Bridge between mason and lspconfig
Plug 'williamboman/mason-lspconfig.nvim'
" Native LSP configs
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'Amansingh-afk/milli.nvim'
Plug 'goolord/alpha-nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ararslan/license-to-vim'
call plug#end()


set termguicolors
colo dracula
syntax on
set number
set autoindent
set mouse=a              
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

lua << EOF
require("autoclose").setup()

local cmp = require 'cmp'
local luasnip = require'luasnip'
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
   { name = 'buffer' },
   { name = "jupynium", priority = 1000 },  -- consider higher priority than LSP
  }),

})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })
-- Init Mason itself
require("mason").setup()

-- C:withonnect Mason with lspconfig
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "rust_analyzer", "lua_ls","clangd" }, -- pick your servers
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'horizon',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}

}
-- to make sure cursor stays the same after openinng and closing nvim
vim.opt.guicursor = "n-v-c:hor20-blinkon500-blinkoff500,i-ci-ve:ver25,r-cr:hor20,o:hor50"

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.cmd("silent! !printf '\\e[3 q'")
  end,
})
require('alpha-nv')
require("milli").alpha({ splash = "fire", loop = true })
EOF
:set cmdheight=0
set shiftwidth=3 


:set laststatus=2


