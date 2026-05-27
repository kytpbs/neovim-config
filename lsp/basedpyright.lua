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

                -- ROS 2 Humble system packages (apt-installed, not on PyPI). Set here
                -- (not just pyproject.toml) because LSP-provided analysis settings can
                -- override the per-project [tool.basedpyright] config.
                extraPaths = {
                    '/opt/ros/kilted/lib/python3.12/site-packages',
                    '/opt/ros/kilted/local/lib/python3.12/dist-packages',
                    '/opt/ros/humble/lib/python3.10/site-packages',
                    '/opt/ros/humble/local/lib/python3.10/dist-packages',
                },

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
