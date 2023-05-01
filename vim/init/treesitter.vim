lua <<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = maintained,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = ",ann",
			node_incremental = ",arn",
			scope_incremental = ",arc",
			node_decremental = ",arm",
		},
	},
}
vim.api.nvim_set_hl(0, "@variable", { link = "GruvboxFg0" })
vim.api.nvim_set_hl(0, "@parameter", { link = "GruvboxFg0" })
vim.api.nvim_set_hl(0, "@constant", { link = "GruvboxPurple" })
EOF
