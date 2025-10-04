return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async',
  },
  config = function()
    -- Comment out line below if you want the fold column to show and indicate fold levels show
    -- vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    require('ufo').setup {
      provider_selector = function()
        return { 'treesitter', 'indent' }
      end,
    }
  end,
}
