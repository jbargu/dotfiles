-- Explore:
-- - External terminal
-- - make the virt lines thing available if ppl want it
-- - find the nearest codelens above cursor

-- TODO: add other languages https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/after/plugin/dap.lua

local has_dap, dap = pcall(require, "dap")
if not has_dap then
  return
end

require("nvim-dap-virtual-text").setup {
  enabled = true,

  -- DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, DapVirtualTextForceRefresh
  enabled_commands = false,

  -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
  highlight_changed_variables = true,
  highlight_new_as_changed = true,

  -- prefix virtual text with comment string
  commented = false,

  show_stop_reason = true,

  -- experimental features:
  virt_text_pos = "eol", -- position of virtual text, see `:h nvim_buf_set_extmark()`
  all_frames = false, -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
}

local extension_path = vim.fn.expand "~/.local/bin/codelldb/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

dap.adapters.rt_lldb = function(callback, _)
  local stdout = vim.loop.new_pipe(false)
  local stderr = vim.loop.new_pipe(false)
  local handle
  local pid_or_err
  local port
  local error_message = ""

  local opts = {
    stdio = { nil, stdout, stderr },
    args = { "--liblldb", liblldb_path },
    detached = true,
  }

  handle, pid_or_err = vim.loop.spawn(codelldb_path, opts, function(code)
    stdout:close()
    stderr:close()
    handle:close()
    if code ~= 0 then
      print("codelldb exited with code", code)
      print("error message", error_message)
    end
  end)

  assert(handle, "Error running codelldb: " .. tostring(pid_or_err))

  stdout:read_start(function(err, chunk)
    assert(not err, err)
    if chunk then
      if not port then
        local chunks = {}
        for substring in chunk:gmatch "%S+" do
          table.insert(chunks, substring)
        end
        port = tonumber(chunks[#chunks])
        vim.schedule(function()
          callback {
            type = "server",
            host = "127.0.0.1",
            port = port,
          }
        end)
      else
        vim.schedule(function()
          require("dap.repl").append(chunk)
        end)
      end
    end
  end)
  stderr:read_start(function(_, chunk)
    if chunk then
      error_message = error_message .. chunk

      vim.schedule(function()
        require("dap.repl").append(chunk)
      end)
    end
  end)
end

dap.configurations.rust = {
  {
    name = "Launch",
    type = "rt_lldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},

    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = false,
  },
}

--vim.keymap.set("n", "<leader><F5>", function()
  --if vim.bo.filetype ~= "rust" then
    --vim.notify "This wasn't rust. I don't know what to do"
    --return
  --end

  --R("module.dap").select_rust_runnable()
--end)

vim.cmd [[nnoremap <silent> <F5> :lua require'dap'.continue()<CR>]]
vim.cmd [[nnoremap <silent> <F6> :lua require'dap'.step_into()<CR>]]
vim.cmd [[nnoremap <silent> <F7> :lua require'dap'.step_over()<CR>]]
vim.cmd [[nnoremap <silent> <F8> :lua require'dap'.step_out()<CR>]]
vim.cmd [[nnoremap <silent> <F10> :lua require'dap'.disconnect()<CR>]]

vim.cmd [[nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>]]
vim.cmd [[nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]]
vim.cmd [[nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>]]

vim.cmd [[nnoremap <silent> <space>dh :lua require('dap.ui.variables').hover()<CR>]]

vim.cmd [[
augroup DapRepl
  au!
  au FileType dap-repl lua require('dap.ext.autocompl').attach()
augroup END
]]

local dap_ui = require "dapui"

local _ = dap_ui.setup {
  -- You can change the order of elements in the sidebar
    layouts = {
  {
    elements = {
    -- Elements can be strings or table with id and size keys.
      { id = "scopes", size = 0.25 },
      "breakpoints",
      --"stacks",
      "watches",
    },
    size = 40, -- 40 columns
    position = "left",
  },
  {
    elements = {
      "repl",
      "console",
    },
    size = 0.25, -- 25% of total lines
    position = "bottom",
  },
},
}

dap.listeners.after.event_initialized["dapui_config"] = function()
  dap_ui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dap_ui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dap_ui.close()
end

--[[
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dl :lua require'dap'.repl.run_last()<CR>
--]]

-- vim.cmd [[nmap <silent> <space>db <Plug>VimspectorToggleBreakpoint]]
-- vim.cmd [[nmap <space>ds <Plug>VimscectorContinue]]
