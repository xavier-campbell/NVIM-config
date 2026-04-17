return {
	{
		"olimorris/onedarkpro.nvim",
		lazy = true;
	},

	{
		'marko-cerovac/material.nvim',
		lazy = true,
	},

	{
		'catppuccin/nvim',
		lazy = true,
	},

	{
		'rebelot/kanagawa.nvim',
		priority = 1000,

		config = function()
			vim.cmd("colorscheme kanagawa-wave")
		end,
	},

	{
		"EdenEast/nightfox.nvim",
		lazy = true,
		--[[priority = 1000,

		config = function()
			vim.cmd("colorscheme carbonfox")
		end,]]--
	},

	{
		"scottmckendry/cyberdream.nvim",
		lazy = true,
		--[[priority = 1000,

		config = function()
			vim.cmd("colorscheme cyberdream")
		end,]]--
	}

}
