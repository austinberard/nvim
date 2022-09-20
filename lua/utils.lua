-- utils.lua

local M = {}


function M.tele_file_explorer()
  require('telescope.builtin').file_browser {
    prompt_title = "\\ File Explorer /",
    shorten_path = false,
    cwd = "~",
    width = 0.25,

    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end


function M.project_files()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end


function M.tele_find_files()
  require"telescope.builtin".find_files(
    require('telescope.themes').get_dropdown({
      borderchars = {
	{ '─', '│', '─', '│', '┌', '┐', '┘', '└'},
	prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
	results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
	preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      },
      width = 0.8,
      previewer = false,
      prompt_title = "\\ File Explorer /",
    })
  )
end


function M.tele_cd()
  require'telescope'.extensions.zoxide.list(
    require('telescope.themes').get_dropdown({
      borderchars = {
	{ '─', '│', '─', '│', '┌', '┐', '┘', '└'},
	prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
	results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
	preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      },
      width = 0.8,
      previewer = false,
      prompt_title = "\\ Change Directory /",
    })
  )
end

function M.tele_rg()
  require"telescope.builtin".live_grep(
    require('telescope.themes').get_ivy({
      prompt_title = "\\ Search /",
    })
  )
end

function M.tele_buffers()
  require"telescope.builtin".buffers(
    require('telescope.themes').get_dropdown({
      borderchars = {
	{ '─', '│', '─', '│', '┌', '┐', '┘', '└'},
	prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
	results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
	preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      },
      width = 0.8,
      previewer = false,
      prompt_title = "\\ Buffers /",
    })
  )
end

return M
