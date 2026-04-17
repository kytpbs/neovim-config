require('mason').setup({})
-- Temporary ty workaround, since it's not yet supported by mason-lspconfig


-- ty for Python completion only
-- Config at /lsp/ty.lua
vim.lsp.enable('ty')

-- Config at /lsp/jdtls.lua
vim.lsp.enable('jdtls')

require('mason-lspconfig').setup({
    handlers = {
        -- Default handler for all languages
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        ["jdtls"] = function()
            -- Switched to new nvim setup,
            -- so we don't configure anything with mason-lspconfig
            -- Instead, all configuration is at /lsp/jdtls.lua, which is auto-loaded by nvim
        end,

        -- basedpyright for Python diagnostics, hover, go-to-def, etc. (not completion)
        ["basedpyright"] = function()
            require('lspconfig').basedpyright.setup({
                on_attach = function(client, bufnr)
                    -- Disable completion from basedpyright (ty handles completion)
                    client.server_capabilities.completionProvider = nil
                end,
                settings = {
                    basedpyright = {
                        analysis = {
                            enableTypeIgnoreComments = true,
                            useLibraryCodeForTypes = true,

                            diagnosticSeverityOverrides = {
                                reportMissingTypeStubs = 'none',
                                reportExplicitAny = 'none',
                                reportImplicitOverride = 'none',
                            },
                            inlayHints = {
                                callArgumentNames = true
                            }
                        }
                    }
                }
            })
        end,

    },
})
