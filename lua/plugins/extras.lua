return {
    {
        'mbbill/undotree',
        lazy = false
    },

    {
        'numToStr/Comment.nvim',
        lazy = false
    },

    {
        "Wansmer/treesj",
        keys = {
            { "<leader>j", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
        },
        opts = { use_default_keymaps = false, max_join_length = 150 },
    },

    {
        'kevinhwang91/nvim-ufo',
        lazy = false,
        dependencies = {'kevinhwang91/promise-async'}
    }
}
