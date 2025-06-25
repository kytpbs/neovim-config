return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter', 'BurntSushi/ripgrep' },
    },


	{
		'mbbill/undotree',
		lazy=false
	},


	{
		'andweeb/presence.nvim'
	},

	{
		'numToStr/Comment.nvim',
		lazy=false
	},

	{
	  "vhyrro/luarocks.nvim",
	  priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
	  config = true,
	},
}
