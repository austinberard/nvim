require('plugins_config.telescope_setup')

require('plugins_config.lualine_setup')
require('plugins_config.nvimtree_setup')

require('plugins_config.lspconfig_setup')
require('plugins_config.treesitter_setup')

require('plugins_config.cmp_setup')

require('bufferline').setup{
  options = {
    offsets = {
      {
	filetype = "NvimTree",
	text = "File Explorer",
	highlight = "Directory",
	text_align = "left"
      }
    }
  }
}

require('plugins_config.dap_setup')
