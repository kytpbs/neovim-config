-- previous setup, for main branch

require 'nvim-treesitter'.setup {
    -- Directory to install parsers and queries to
    install_dir = vim.fn.stdpath('data') .. '/site'
}

require 'nvim-treesitter'.install({
    'help',
    'vim',
    'lua',
    'json',
    'python',
    'java',
    'powershell',
    'cpp',
    'dockerfile',
    'yaml',
    'typescript',
    'javascript',
})
