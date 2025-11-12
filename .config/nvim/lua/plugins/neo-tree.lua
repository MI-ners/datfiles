return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		config = function()
			lazy = false, vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
			vim.keymap.set("n", "<C-g>", ":Neotree close<CR>", {})
		end,
	},
}
