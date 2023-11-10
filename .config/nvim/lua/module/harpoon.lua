vim.keymap.set('n', '<leader>m', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>n', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'fm', ':Telescope harpoon marks<CR>', { noremap = true, silent = false })

vim.keymap.set('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>5', ':lua require("harpoon.ui").nav_file(5)<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '[n', ':lua require("harpoon.ui").nav_prev()<CR>', { noremap = true, silent = false })
vim.keymap.set('n', ']n', ':lua require("harpoon.ui").nav_next()<CR>', { noremap = true, silent = false })

