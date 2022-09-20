require'telescope'.load_extension('zoxide')
require'telescope'.load_extension('dap')

local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    file_ignore_patterns = {
      "third_party",
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
