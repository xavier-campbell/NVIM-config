return{
	"nvim-lualine/lualine.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },

	config = function()
		local lualine = require('lualine')
		local lazy_status = require('lazy.status') -- to configure pending lazy updates count
		
		local colours = {
			colour0 = "#092236",
			colour1 = "#ff5874",
			colour2 = "#c3ccdc",
			colour3 = "#1c1e26",
			colour4 = "#a1aab8",
			colour5 = "#828697",
			colour6 = "#ae81ff",
		}

		local my_lualine_theme = {
			replace = {
				a = { fg = colours.colour0, bg = colours.colour1, gui = "bold"},
				b = { fg = colours.colour2, bg = colours.colour3 },
			},
			
			inactive = {
				a = { fg = colours.colour4, bg = colours.colour3, gui = "bold"},
				b = { fg = colours.colour4, bg = colours.colour3 },
				c = { fg = colours.colour4, bg = colours.colour3 },
			},

			normal = {
				a = { fg = colours.colour0, bg = colours.colour5, gui = "bold"},
				b = { fg = colours.colour2, bg = colours.colour3 },
				c = { fg = colours.colour2, bg = colours.colour3 },
			},

			visual = {
				a = { fg = colours.colour0, bg = colours.colour6, gui = "bold"},
				b = { fg = colours.colour2, bg = colours.colour3 },
			},

			insert = {
				a = { fg = colours.colour0, bg = colours.colour2, gui = "bold"},
				b = { fg = colours.colour2, bg = colours.colour3 },
			},
		}

		local mode = {
			'mode',
			fmt = function(str)
                -- return ' ' 
                -- displays only the first character of the mode
                return ' ' .. str
			end,
		}

		local diff = {
			'diff',
			coloured = true,
			symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
		}

		local filename = {
			'filename',
			file_status = true,
			path = 0,
		}

		local branch = {'branch', icon = {'', color={fg='#A6D4DE'}}, '|'}

		lualine.setup({
			icons_enabled = true,
			options = {
				theme = my_lualine_theme,
				component_seperators = { left = '|', right = '|'},
				section_seperators = { left = '|', right = ''},
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { branch },
				lualine_c = { diff, filename },
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},

					{ "filetype" },
				},
			},
		})

	end,
}
