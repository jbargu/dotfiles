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
EOF

autocmd ColorScheme * hi link @variable GruvboxFg2
autocmd ColorScheme * hi link @parameter GruvboxFg2
autocmd ColorScheme * hi link @constant GruvboxPurple
