-- Netrw
vim.api.nvim_command([[
function ToggleExplorer()
    if &ft == "netrw"
        if exists("w:netrw_rexlocal")
            Rexplore
        else
            if exists("w:netrw_rexfile")
                exec 'e ' . w:netrw_rexfile
            endif
        endif
    else
        Explore
    endif
endfun
]])

vim.api.nvim_set_keymap('n', '<leader>E', ':Lexplore!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':call ToggleExplorer()<CR>', { noremap = true, silent = true })

-- Swap Ctrl-o and Ctrl-t in insert mode
vim.keymap.set("i", "<C-t>", "<C-o>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-o>", "<C-t>", { noremap = true, silent = true })


-- Visual Remap
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Smoothest remap ever
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "G", "Gzz")

-- Window Resizing
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical resize +4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':resize +4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':resize -4<CR>', { noremap = true, silent = true })

-- Quickfix List
vim.keymap.set("n", "<leader>tj", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>tk", "<cmd>cprev<CR>")

-- Highlight Search
vim.api.nvim_set_keymap("n", "<leader>h", ":noh <CR>", { noremap = true, silent = true })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "r<C-c>", "<Esc>", { noremap = true }) -- This kinda works

-- Dismiss pending <C-w> commands with Ctrl-C
vim.keymap.set("n", "<C-w><C-c>", "<Esc>", { noremap = true })
