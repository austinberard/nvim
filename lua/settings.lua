local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g

-- global options
o.guifont = 'CaskaydiaCove NF'
o.ignorecase = true
o.hlsearch = true
o.smartcase = true
o.clipboard = 'unnamed'
o.showmatch = true
o.mouse = 'a'
o.splitbelow = true
o.splitright = true
o.laststatus = 2
o.scrolloff = 12
o.ffs = 'dos'
o.shiftround = true
o.updatetime = 250
o.showbreak = ' ﬌ '
o.textwidth = 80
o.completeopt = 'menuone,noselect'
o.expandtab = true
o.softtabstop = 2
o.shiftwidth = 2

o.showmode = false

o.undofile = true
o.undolevels = 10000

-- window-local options
wo.relativenumber = true
wo.number = true
wo.cursorline = true
wo.linebreak = true
wo.colorcolumn = '80'

-- buffer-local options
bo.ff = 'dos'
bo.expandtab = true
bo.softtabstop = 2
bo.shiftwidth = 2


g.bufferline = {
  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,
}

vim.cmd [[set termguicolors]]

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Open/close terminal with leader + v
-- TODO: this messes up insert mode, change keybindings
--[=====[ vim.cmd [[
  autocmd TermEnter term://*toggleterm#*
	\ tnoremap <silent><leader>\ <Cmd>exe v:count1 . "ToggleTerm"<CR>
]] ]=====]
