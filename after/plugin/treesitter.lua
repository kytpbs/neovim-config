-- previous setup, for main branch
--
-- require'nvim-treesitter'.setup {
--   -- Directory to install parsers and queries to
--   install_dir = vim.fn.stdpath('data') .. '/site'
-- }
--
-- require'nvim-treesitter'.install ({ 'help', 'lua', 'json', 'python', 'java'})

-- current temp setup for master 0.10 branch, only for telescope for now
local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = {
        "lua",
		"python",
        "java",
        "powershell",
		"cpp",
        "dockerfile",
		"javascript",
	},
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = false },
})
