return {
    'nvim-java/nvim-java',
    lazy = true,
    ft = {'java', 'kotlin', 'gradle'},
    config = function()
        require('java').setup()

        require('lspconfig').jdtls.setup({})
    end
}
