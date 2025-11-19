return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
		config = function()
			require("oil").setup()
			vim.keymap.set("n", "<leader>ew", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	},

	{
		"benomahony/oil-git.nvim",
		dependencies = { "stevearc/oil.nvim" },
		-- No opts or config needed! Works automatically
	},
}
