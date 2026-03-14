return {
	"neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
    },

	config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				--keymaps
				opts.desc = "Show LSP references"
				vim.keymap.set("n", "gR", "<cmd>lua vim.lsp.buf.references()<CR>", opts) -- show definiton references

				opts.desc = "Show LSP decleration"
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to decleration

				opts.desc = "Show LSP definitions"
				vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

				opts.desc = "Show LSP implementations"
				vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)

				opts.desc = "Show LSP type definitions"
				vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)

				opts.desc = "See available code actions"
				vim.keymap.set({ 'n', 'v' }, "<leader>vca", function() vim.lsp.buf.code_action() end, opts)

				opts.desc = "Smart Rename"
				vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- renames all instances of variable

				opts = { desc = "Show buffer diagnostics" }
				vim.keymap.set("n", "<leader>D", "<cmd>lua vim.diagnostic.open_float(0)<CR>", opts)

                opts.desc = "Show line diagnostics"
                vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

                opts.desc = "Show documentation for what is under cursor"
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

                opts.desc = "Restart LSP"
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

                vim.keymap.set("i", "<C-h>", function()
                    vim.lsp.buf.signature_help()
                end, opts)
			end
		})

        -- NOTE: Diagnostic Setup
        -- Define sign icons for each severity
        local signs = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = "󰠠 ",
            [vim.diagnostic.severity.INFO] = " ",
        }

		vim.diagnostic.config({
			signs = {
				text = signs
			},
			virtual_text = true,
			update_in_insert = false,
			underline = true,
			severity_sort = true
		})

	end
}

