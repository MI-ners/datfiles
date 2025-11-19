return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "c", "cpp", "lua", "python", "vim", "bash", "make", "gitcommit" },
				auto_install = true,
				highlights = { enable = true },
				indent = { enable = true },
				autotage = { enable = true },
			})
		end,
	},
}
