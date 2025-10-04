return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
  },
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'lazygit',
      callback = function()
        vim.api.nvim_create_autocmd({ 'BufLeave' }, {
          buffer = 0,
          callback = function()
            local events = require 'neo-tree.events'
            events.fire_event(events.GIT_EVENT)
          end,
          once = true,
        })
      end,
    })
  end,
}
