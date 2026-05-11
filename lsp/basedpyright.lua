return {
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
}
