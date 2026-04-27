-- source; https://github.com/DaiterGG/neovim-config/blob/main/lua/custom/plugins/alpha.lua 
   local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    _Gopts = {
      position = 'center',
      hl = 'Type',
      wrap = 'overflow',
    }

    -- DASHBOARD HEADER

    local function getGreeting(name)
      local tableTime = os.date '*t'
      local datetime = os.date ' %Y-%m-%d-%A   %H:%M:%S '
      local hour = tableTime.hour
      local greetingsTable = {
        [1] = '  Sleep well',
        [2] = '  Good morning',
        [3] = '  Good afternoon',
        [4] = '  Good evening',
        [5] = '󰖔  Good night',
      }
      local greetingIndex = 0
      if hour == 23 or hour < 7 then
        greetingIndex = 1
      elseif hour < 12 then
        greetingIndex = 2
      elseif hour >= 12 and hour < 18 then
        greetingIndex = 3
      elseif hour >= 18 and hour < 21 then
        greetingIndex = 4
      elseif hour >= 21 then
        greetingIndex = 5
      end
      return datetime .. '  ' .. greetingsTable[greetingIndex] .. ', ' .. name
    end

    local fill = vim.fn.winheight(0) - 43
    local logo = (fill >= 0 and [[

    ]] or '') ..
        [[
                                          
       ███████████           █████      ██
      ███████████             █████ 
      ████████████████ ███████████ ███   ███████
     ████████████████ ████████████ █████ ██████████████
    █████████████████████████████ █████ █████ ████ █████
  ██████████████████████████████████ █████ █████ ████ █████
 ██████  ███ █████████████████ ████ █████ █████ ████ ██████
 ██████   ██  ███████████████   ██ █████████████████

      ]]

    local userName = 'Lazy'
    local greeting = getGreeting(userName)
    local marginBottom = 0


    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#c38950" })

    local header_val = vim.split(logo, '\n')
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.header.val = header_val
    -- Split logo into lines
    local logoLines = {}
    for line in logo:gmatch '[^\r\n]+' do
      table.insert(logoLines, line)
    end

    -- Calculate padding for centering the greeting
    local logoWidth                   = logo:find '\n' - 1 -- Assuming the logo width is the width of the first line
    local greetingWidth               = #greeting
    local padding                     = math.floor((logoWidth - greetingWidth) / 2)

    -- Generate spaces for padding
    local paddedGreeting              = string.rep(' ', padding) .. greeting

    -- Add margin lines below the padded greeting
    local margin                      = string.rep('\n', marginBottom)

    -- Concatenate logo, padded greeting, and margin
    local adjustedLogo                = logo .. '\n' .. paddedGreeting .. margin

    local init_path                   = vim.fn.stdpath('config')
    dashboard.section.buttons.val     = {
      dashboard.button('n', '  New file', ':ene <BAR> startinsert<CR>'),
      dashboard.button('r', '󰄉  Recent files', ':Telescope oldfiles<CR>'),
      dashboard.button('u', '󱐥  Update plugins', '<cmd>PlugUpdate<CR>'),
      dashboard.button('h', '󰈞  Find file in home',
        ':cd /home/teymur | silent Telescope find_files hidden=true no_ignore=true <CR>'),
      dashboard.button('p', '󰮗  Find file in Projects',
        ':cd /home/teymur/Documents/Projects | silent Telescope find_files hidden=true no_ignore=true <CR>'),
      dashboard.button('s', '  Settings', ':cd ' .. init_path .. '<CR>:e init.vim<CR>'),
      dashboard.button('q', '󰿅  Quit', '<cmd>q<CR>'),
      -- dashboard.button('', ''),
    }

    dashboard.section.buttons.opts.hl = 'AlphaHeader1_0'
    -- local function footer()
    -- 	return "Footer Text"
    -- end

    -- dashboard.section.footer.val = vim.split('\n\n' .. getGreeting 'Lazy', '\n')

    vim.api.nvim_create_autocmd('VimEnter', {
      once = true,
      callback = function()
        dashboard.section.footer.val = {}
        if fill >= 0 then
          table.insert(dashboard.section.footer.val, '')
          table.insert(dashboard.section.footer.val, '')
          table.insert(dashboard.section.footer.val, '')
        end
        table.insert(dashboard.section.footer.val, ' vim-plug ready ')
        for _ = 1, fill do
          table.insert(dashboard.section.footer.val, '')
        end
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
    -- Hide all the unnecessary visual elements while on the dashboard, and add
    -- them back when leaving the dashboard.
    local group = vim.api.nvim_create_augroup('CleanDashboard', {})

    vim.api.nvim_create_autocmd('User', {
      group = group,
      pattern = 'AlphaReady',
      callback = function()
        -- vim.opt.showtabline = 0
        -- vim.opt.showmode = true
        -- vim.opt.laststatus = 3
        vim.opt.showcmd = false
        vim.opt.ruler = false
      end,
    })

    vim.api.nvim_create_autocmd('BufUnload', {
      group = group,
      pattern = '<buffer>',
      callback = function()
        -- vim.opt.showtabline = 0
        -- vim.opt.showmode = true
        -- vim.opt.laststatus = 3
        vim.opt.showcmd = true
        vim.opt.ruler = true
      end,
    })
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
