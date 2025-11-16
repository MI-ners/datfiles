vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.opt.smartindent = true

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
