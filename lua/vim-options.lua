--Basic Settings
vim.wo.relativenumber = true
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = ' '

--Clipboard
vim.opt.clipboard = "unnamedplus"

--Highlihgt Thing
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

--Binds
vim.api.nvim_set_keymap('i', '<CapsLock>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<CapsLock>', '<NOP>', { noremap = true, silent = true })
