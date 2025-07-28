require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        -- Default handler for all languages
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        -- Custom handler for basedpyright
        ["basedpyright"] = function()
            require('lspconfig').basedpyright.setup({
                settings = {
                    basedpyright = {
                        analysis = {
                            enableTypeIgnoreComments = true,
                            useLibraryCodeForTypes = true,

                            diagnosticSeverityOverrides = {
                                -- reportGeneralTypeIssues = 'none',
                                -- reportArgumentType = 'none',
                                -- reportUnknownMemberType = 'none',
                                -- reportAssignmentType = 'none',
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
