-- maps.lua

local map = vim.api.nvim_set_keymap

map('i', 'jj', '<ESC>', {})
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true, silent = true }
-- Clear search with leader esc
map('n', '<leader><esc>', ':nohlsearch<cr>', options)

map('n', '<leader>w', ':w<cr>', options)
map('n', '<leader>q', ':q<cr>', options)

map('n', '<leader>g', ':LazyGit<cr>', options)

map('n', '<leader>ff', [[<cmd>lua require('utils').tele_find_files()<CR>]], options)
map('n', '<leader>z', [[<cmd>lua require('utils').tele_cd()<CR>]], options)
map('n', '<leader>a', [[<cmd>lua require('utils').tele_rg()<CR>]], options)
map('n', '<leader>o', [[<cmd>lua require('utils').tele_buffers()<CR>]], options)

-- Goto buffer in position...
map('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', options)
map('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', options)
map('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', options)
map('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', options)
map('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', options)
map('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', options)
map('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', options)
map('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', options)
map('n', '<A-9>', ':BufferLineGoToBuffer 9<CR>', options)

map('n', '<leader>e', ':NvimTreeToggle<cr>', options)

map('n', '<leader>s', ':%s/<c-r><c-w>/', options)

map('n', '<leader>cc', ':botright cope<cr>', options)
map('n', '<leader>n', ':cn<cr>', options)
map('n', '<leader>p', ':cp<cr>', options)

map('n', '<Up>', ':resize -2<CR>', options)
map('n', '<Down>', ':resize +2<CR>', options)
map('n', '<Left>', ':vertical resize -2<CR>', options)
map('n', '<Right>', ':vertical resize +2<CR>', options)

map('n', '<C-J>', '<C-W><C-J>', options)
map('n', '<C-K>', '<C-W><C-K>', options)
map('n', '<C-L>', '<C-W><C-L>', options)
map('n', '<C-H>', '<C-W><C-H>', options)

map('n', 'Y', 'y$', options)

map('n', 'j', 'gj', options)
map('n', 'k', 'gk', options)

map('n', '<Tab>', '%', options)

map('v', '>', '>gv', options)
map('v', '<', '<gv', options)
map('v', '<Tab>', '%', options)


map('n', '<leader>dct', '<cmd>lua require"dap".continue()<CR>', options)
map('n', '<leader>dsv', '<cmd>lua require"dap".step_over()<CR>', options)
map('n', '<leader>dsi', '<cmd>lua require"dap".step_into()<CR>', options)
map('n', '<leader>dso', '<cmd>lua require"dap".step_out()<CR>', options)
map('n', '<leader>dtb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', options)

map('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', options)
map('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>', options)
map('v', '<leader>dhv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', options)

map('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', options)
map('n', '<leader>duf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", options)

map('n', '<leader>dsbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', options)
map('n', '<leader>dsbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', options)
map('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>', options)
map('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>', options)


-- telescope-dap
map('n', '<leader>dcc',
          '<cmd>lua require"telescope".extensions.dap.commands{}<CR>', options)
map('n', '<leader>dco',
          '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', options)
map('n', '<leader>dlb',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', options)
map('n', '<leader>dv',
          '<cmd>lua require"telescope".extensions.dap.variables{}<CR>', options)
map('n', '<leader>df',
          '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', options)

local cmd = vim.cmd
cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
