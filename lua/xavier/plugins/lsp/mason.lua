return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"neovim/nvim-lspconfig",
		"nvim-lua/plenary.nvim"
	},

	config = function()
		-- import mason and mason_lspconfig
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

		mason_lspconfig.setup({
			-- servers for mason to install 
			ensure_installed = {
				"lua_ls",
				"html",
				"cssls",
				"pyright",
				"clangd",
				"rust_analyzer",
				"ts_ls",
				"bashls",
				"gopls",
				"marksman"
			},
			automatic_installation = true,
		})
	end
}
