return {
    cmd = { 'ty', 'server' },
    filetypes = { 'python' },
    -- pyproject.toml / ty.toml must outrank .git so ty roots at the package dir, not
    -- the ROS ws root (~/ros2_ws) where .git lives. Keep .git as fallback.
    root_markers = {
        'pyproject.toml',
        'ty.toml',
        '.git',
    },
    -- The ty LANGUAGE SERVER does NOT read [tool.ty] from pyproject.toml (only the
    -- `ty check` CLI does). Pass config inline via ty.configuration instead, so the
    -- ROS 2 Humble system packages (apt-installed, not on PyPI) resolve.
    settings = {
        ty = {
            configuration = {
                environment = {
                    ['extra-paths'] = {
                        '/opt/ros/kilted/lib/python3.12/site-packages',
                        '/opt/ros/kilted/local/lib/python3.12/dist-packages',
                        '/opt/ros/humble/lib/python3.10/site-packages',
                        '/opt/ros/humble/local/lib/python3.10/dist-packages',
                    },
                },
                src = { root = '.' },
            },
        },
    },
    on_attach = function(client, bufnr)
        -- Only use ty for completion, let basedpyright handle other features
        client.server_capabilities.hoverProvider = nil
        client.server_capabilities.definitionProvider = nil
        client.server_capabilities.typeDefinitionProvider = nil
        client.server_capabilities.referencesProvider = nil
        client.server_capabilities.documentHighlightProvider = nil
        client.server_capabilities.renameProvider = nil
        client.server_capabilities.codeActionProvider = nil
        client.server_capabilities.signatureHelpProvider = nil
    end,
}
