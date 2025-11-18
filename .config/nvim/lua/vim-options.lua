vim.cmd("set tabstop=4")
vim.opt.expandtab = true
vim.cmd("set softtabstop=4")
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cindent = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.cursorline = true
vim.opt.shiftwidth = 4

vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.diagnostic.config({ virtual_text = true })

vim.o.termguicolors = true

vim.keymap.set("n", "<Leader>'", ":noh<cr>")

vim.g.loaded_man_plugin = 1 -- or similar variable for your plugin

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.opt.background = "dark"

--copilot integration
vim.keymap.set("i", "<C-Space>", function()
	require("blink.cmp").trigger()
end, { silent = true })

vim.keymap.set("i", "<C-l>", function()
	local ok, cmp = pcall(require, "blink.cmp")
	if ok then
		local accepted = cmp.accept()
		if accepted then
			return
		end
	end

	-- fallback to Copilot, also wrapped in pcall
	pcall(function()
		vim.fn["copilot#Accept"]("")
	end)
end, { silent = true })
