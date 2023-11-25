require'nvim-treesitter.configs'.setup {
	ensure_installed = {
        'terraform',
        'javascript',
        'typescript',
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query'
    },
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,

	},
}
