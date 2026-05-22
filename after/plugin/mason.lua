require('mason').setup({})
-- Temporary ty workaround, since it's not yet supported by mason-lspconfig


-- ty for Python completion only
-- Config at /lsp/ty.lua
vim.lsp.enable('ty')

-- Config at /lsp/jdtls.lua
vim.lsp.enable('jdtls')

require('mason-tool-installer').setup({
    ensure_installed = {
        'actionlint',          -- linter (GitHub Actions)
        'debugpy',             -- DAP (Python)
        'java-debug-adapter',  -- DAP (Java)
        'java-test',           -- Java test runner
        'prettier',            -- formatter
        'pydocstyle',          -- linter (Python docstrings)
        'pylint',              -- linter (Python)
        'pyment',              -- formatter/generator (Python docstrings)
        'uv',                  -- Python package manager
    },
    auto_update = false,
    run_on_start = true,
})


require('mason-lspconfig').setup({
    ensure_installed = {
        'basedpyright',
        'clangd',
        'dockerls',
        'gh-actions-language-server',
        'harper_ls',
        'jdtls',
        'kotlin_language_server',
        'lua_ls',
        'powershell_es',
        -- 'pyrefly', -- Maybe add in the future instead of ty or basedpyright
        'ruff',
        'sonarlint-language-server',
        'taplo',
        'ty',
        'ts_ls',
        'vtsls',
        'yamlls',
    },
})
