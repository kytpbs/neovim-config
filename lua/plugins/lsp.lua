return {
	{
		'neovim/nvim-lspconfig',
		tag = 'v2.8.0',
		pin = true
	},

	{
		'hrsh7th/cmp-nvim-lsp'
	},

	{
		'hrsh7th/nvim-cmp'
	},

	--mason
	{
		'mason-org/mason.nvim',
		tag = 'v2.2.1',
		pin = true
	},

    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        dependencies = { 'mason-org/mason.nvim' },
    },

	{
		'mason-org/mason-lspconfig.nvim',
		tag = 'v2.2.0',
        dependencies = {
            'mason.nvim',
            'nvim-lspconfig',
        },
		pin = true
	},

}
