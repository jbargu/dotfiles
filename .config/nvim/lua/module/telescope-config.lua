local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

require('telescope').load_extension('fzf')

require('telescope').setup{
    defaults = {
	vimgrep_arguments = {
	    'rg',
	    '--color=never',
	    '--no-heading',
	    '--with-filename',
	    '--line-number',
	    '--column',
	    '--smart-case'
	},
	prompt_prefix = "> ",
	selection_caret = "> ",
	entry_prefix = " ",
	initial_mode = "insert",
	selection_strategy = "reset",
	sorting_strategy = "descending",
	layout_strategy = "horizontal",
	layout_config = {
	    horizontal = {
		mirror = false,
	    },
	    vertical = {
		mirror = false,
	    },
	},
	history = {
	    path="~/.local/share/nvim/databases/telescope_history.txt",
	    limit = 100,
	    handler = require('telescope.actions.history').get_simple_history
	},
	mappings = {
	    i = {
		["<C-F>"] = require('telescope.actions').cycle_history_next,
		["<C-B>"] = require('telescope.actions').cycle_history_prev,
	    },
	},
	file_sorter =  require'telescope.sorters'.get_fuzzy_file,
	file_ignore_patterns = {},
	generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
	winblend = 0,
	border = {},
	borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
	color_devicons = true,
	use_less = true,
	path_display = {},
	set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
	file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
	qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

	-- Developer configurations: Not meant for general override
	buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
    },
    pickers = {
	git_files = {
	    previewer = false
	},
	buffers = {
	    sort_mru = true,
	    sort_lastused = true,
	}
    },
    extensions = {
	fzf = {
	    fuzzy = true,                    -- false will only do exact matching
	    override_generic_sorter = true,  -- override the generic sorter
	    override_file_sorter = true,     -- override the file sorter
	    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
	    -- the default case_mode is "smart_case"
	},
	live_grep_args = {
	    auto_quoting = true, -- enable/disable auto-quoting
	    -- define mappings, e.g.
	    mappings = { -- extend mappings
		i = {
		["<C-k>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
		["<C-i>"] = lga_actions.quote_prompt({ postfix =" -t "}),
		},
	    },
	    }
    }
}

-- Mappings
vim.cmd [=[ nnoremap <leader>fg :lua require'module.telescope-config'.project_files()<cr>]=]
vim.cmd [=[ nnoremap <leader>t <cmd>Telescope find_files<cr>]=]
--vim.cmd [=[ nnoremap <leader>r <cmd>Telescope live_grep<cr>]=]
vim.cmd [=[ nnoremap <leader>r :lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>]=]
vim.cmd [=[ nnoremap <leader>fr :lua  require('telescope-live-grep-args.shortcuts').grep_word_under_cursor()<cr>]=]
vim.cmd [=[ nnoremap <leader>ft <cmd>Telescope buffers<cr>]=]
vim.cmd [=[ nnoremap <leader>fh <cmd>Telescope help_tags<cr>]=]


local M = {}

-- Falling back to find_files if git_files can't find a .git directory
-- source: https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#falling-back-to-find_files-if-git_files-cant-find-a-git-directory
M.project_files = function()
    local opts = {} -- define here if you want to define something
    local ok = pcall(require'telescope.builtin'.git_files, opts)
    if not ok then
	require'telescope.builtin'.find_files(opts)
    end

end

return M
