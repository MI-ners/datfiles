vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.diagnostic.config({ virtual_text = true })

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.o.termguicolors = true

-- In init.lua
vim.api.nvim_set_keymap("n", "<F1>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<F1>", "<nop>", { noremap = true, silent = true })
