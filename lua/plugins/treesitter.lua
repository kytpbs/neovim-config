return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		branch = 'main',
		build = ':TSUpdate',
		priority = 1000, --high-priority since other plugins like treesitter need it
	},

}
