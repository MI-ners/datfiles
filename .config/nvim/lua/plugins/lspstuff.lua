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
				ensure_installed = { "lua_ls", "pyright" },
			})
			vim.lsp.config("lua_ls", { settings = {} })
			vim.lsp.config("pyright", {})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pyright")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
