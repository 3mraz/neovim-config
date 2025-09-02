-- return {}
return {
	"mason-org/mason.nvim",
	version = "^1.0.0",
	dependencies = {
		{ "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup()

		local lsps = {
			"ts_ls",
			"intelephense",
			"html",
			"gopls",
			"cssls",
			"tailwindcss",
			"lua_ls",
			"emmet_ls",
			"prismals",
			"pyright",
			"clangd",
			"htmx",
			"harper_ls",
			"ltex",
		}
		mason_lspconfig.setup({
			-- list of servers for mason to install
			automatic_installation = lsps,
			ensure_installed = lsps,
			automatic_enable = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"beautysh",
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"gofumpt",
				"djlint",
				"pylint",
				"eslint_d",
				"clang-format",
				"bibtex-tidy",
				"harper_ls",
				"bibtex-tidy",
			},
		})
	end,
}
