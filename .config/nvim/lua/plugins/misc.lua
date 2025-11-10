return {
	{
		"tpope/vim-surround",
	},

	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
}
