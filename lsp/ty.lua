return {
    cmd = { 'ty', 'server' },
    filetypes = { 'python' },
    root_markers = {
        '.git',
        'pyproject.toml',
        'ty.toml',
    },
    -- filetypes = { 'python' },
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
