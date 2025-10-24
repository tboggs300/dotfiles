vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('tboggs.after.plugin.telescope')
        end
	}
--[[
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
            require('tboggs.after.plugin.colors')
		end
        	})

    use({
        "folke/tokyonight.nvim",
        as = 'tokyonight',
        config = function()
            vim.cmd('colorscheme tokyonight')
        end
    })
]]--
    use({
        "sainnhe/gruvbox-material",
        as = 'gruvbox-material',
        config = function()
            -- require('tboggs.after.plugin.colors')
            vim.g.gruvbox_material_foreground = "original";
            vim.g.gruvbox_material_enable_italic = 1;
            vim.cmd.colorscheme('gruvbox-material');
        end
    })

	use{
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
            require('tboggs.after.plugin.treesitter')
		end,
	}

	use('nvim-treesitter/playground')
	use{
        'theprimeagen/harpoon',
        config = function()
            require('tboggs.after.plugin.harpoon')
        end
    }
    use('theprimeagen/refactoring.nvim')
	use('mbbill/undotree')
	use{
        'tpope/vim-fugitive',
        config = function()
            require('tboggs.after.plugin.fugitive')
        end
    }
    use('nvim-treesitter/nvim-treesitter-context')

	use{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-buffer'},
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
			{'saadparwaiz1/cmp_luasnip'},
		},
        config = function()
            require('tboggs.after.plugin.lsp')
        end
	}

    use({
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup {
                icons = false
            }
            require('tboggs.after.plugin.trouble')
        end
    })

    use{
        'folke/zen-mode.nvim',
        config = function()
            require('tboggs.after.plugin.zenmode')
        end
    }
    use('eandrju/cellular-automaton.nvim')
    use{
        'laytan/cloak.nvim',
        config = function()
            require('tboggs.after.plugin.cloak')
        end
    }


end)
