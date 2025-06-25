--taken-from: https://github.com/kevinhwang91/nvim-ufo
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldmethod = 'manual'
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)


-- You can still install ufo if you want its peekFold, but
-- you _don't_ hook it into foldexpr/foldmethod.
require("ufo").setup({
  provider_selector = function()
    return { "treesitter", "indent" }
  end,
})
