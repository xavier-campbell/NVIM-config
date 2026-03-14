return {
  {
    "nvim-mini/mini.files",
    version = false,

    config = function()
      local MiniFiles = require("mini.files")

      MiniFiles.setup({
        mappings = {
          go_in = "<CR>",
          go_in_plus = "L",
          go_out = "-",
          go_out_plus = "H",
        },
      })

      vim.keymap.set("n", "<leader>ee", function()
		  MiniFiles.open()
      end, { desc = "Toggle Mini file explorer" })

      vim.keymap.set("n", "<leader>ef", function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
        MiniFiles.reveal_cwd()
      end, { desc = "Open MiniFiles at current file" })
    end,
  },
}
