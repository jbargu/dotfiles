require('code_runner').setup({
  mode = 'term',
  focus = false,
  startinsert = false,
  hot_reload = false,
  term = {
    --  Position to open the terminal, this option is ignored if mode is tab
    position = "vertical botright",
    -- window size, this option is ignored if tab is true
    size = 120,
  },
  filetype = {
    rust = "cargo run"
  },
  project_path = vim.fn.expand('~/.config/nvim/code_runner_project_manager.json')

})

vim.keymap.set('n', '<LocalLeader>r', ':w<CR>:RunClose<CR>:RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<LocalLeader>q', ':RunClose<CR>', { noremap = true, silent = false })

-- Use :CRProjects to define run command behaviour
-- Don't forget to escape `-`: https://github.com/CRAG666/code_runner.nvim/pull/107
