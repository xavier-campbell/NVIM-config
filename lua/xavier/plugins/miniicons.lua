return {
	{
		'nvim-mini/mini.icons', version = false,

		config = function()
			require("mini.icons").setup({
				set = "nerdfont",

				icons = {
					default = ""
				},
			})
		end,
	}
}
