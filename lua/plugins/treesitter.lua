return {
	{
		'nvim-treesitter/nvim-treesitter',
        tag = "v0.10.0",
		lazy = false,
		-- branch = 'main',
		build = ':TSUpdate',
		priority = 1000, --high-priority since other plugins like treesitter need it
	},

}
