return {
	{
		"nvim-mini/mini.surround",
		version = false,

		config = function()
			local MiniSurround = require("mini.surround")

			MiniSurround.setup({
				mappings = {
					add = "sa",
					delete = "sd",
					find = "sf",
					find_left = "sF",
					highlight = "sh",
					replace = "sr",
					update_n_lines = "sn",
				},

				highlight_duration = 500
			})
		end,
	},
}

