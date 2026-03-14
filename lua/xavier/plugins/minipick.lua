return {
	"nvim-mini/mini.pick",
	version = false,
	config = function()
		local pick = require("mini.pick")

		pick.setup({
			window = {
				config = {
					border = "rounded",
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", pick.builtin.files, { desc = "Files" })
		vim.keymap.set("n", "<leader>fg", pick.builtin.grep_live, { desc = "Grep" })
		vim.keymap.set("n", "<leader>fb", pick.builtin.buffers, { desc = "Buffers" })
		vim.keymap.set("n", "<leader>fh", pick.builtin.help, { desc = "Help" })
	end,
}
