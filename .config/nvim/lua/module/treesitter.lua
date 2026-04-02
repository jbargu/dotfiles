local ts = require('nvim-treesitter')

ts.install({
  'all'
}):wait(30000)

-- Enable highlighting + incremental selection per filetype
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function(ev)
    -- Disable treesitter highlighting if any line is too long
    for _, line in ipairs(vim.api.nvim_buf_get_lines(ev.buf, 0, -1, false)) do
      if #line > 1000 then
        return
      end
    end
    pcall(vim.treesitter.start, ev.buf)
  end,
})
