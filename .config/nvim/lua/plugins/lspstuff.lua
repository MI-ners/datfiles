return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "clangd", "gopls" },
			})
			vim.lsp.config("lua_ls", { settings = {} })
			vim.lsp.config("pyright", {})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pyright")
			vim.lsp.config("clangd", {})
			vim.lsp.enable("clangd")
			vim.lsp.config("gopls", {})
			vim.lsp.enable("gopls")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
	},
	{
		"j-hui/fidget.nvim",
		version = "*",
		opts = {},
	},
}
