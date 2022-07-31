require('code_runner').setup({
  mode = 'term',
  focus = true,
  startinsert = false,
  term = {
    --  Position to open the terminal, this option is ignored if mode is tab
    position = "vertical botright",
    -- window size, this option is ignored if tab is true
    size = 120,
  },
  filetype = {
    rust = "cargo run"
  },
})

vim.keymap.set('n', '<LocalLeader>w', ':RunClose<CR>:RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<LocalLeader>q', ':RunClose<CR>', { noremap = true, silent = false })

-- Use :CRProjects to define run command behaviour
