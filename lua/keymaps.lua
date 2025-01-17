vim.api.nvim_set_keymap("n", "<A-Up>", ":move .-2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Down>", ":move .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-Up>", ":move '<-2<CR>gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-Down>", ":move '>+1<CR>gv", { noremap = true, silent = true })
