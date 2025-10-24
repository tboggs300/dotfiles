--[[require('rose-pine').setup({
	disable_background = true
})

require('tokyonight').setup({
    disable_background = true,
    style = 'night'
});
]]--

require('gruvbox-material').setup({
    background = {
        transparent = true,
    },
    contrast = 'medium',
    italics = true,
});

function ColorMyPencils(color)
	color = color or 'gruvbox-material'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

ColorMyPencils()
