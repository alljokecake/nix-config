-- TODO: rewrite lol

vim.g.mapleader = " "

local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 1,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    fileencoding = "utf-8",
    hlsearch = true,
    ignorecase = true,
    pumheight = 10,
    showmode = true,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    undofile = true,
    updatetime = 50,
    writebackup = false,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    softtabstop = 4,
    cursorline = true,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    laststatus = 2,
    number = true,
    relativenumber = true,
    colorcolumn = "80",
    textwidth = 80,
    guicursor = "",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd("set fo-=t")
vim.cmd("set fo+=q")
vim.cmd("set history=100")

-- Netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_bufsettings = "noma nomod rnu nobl nowrap ro"


-- Don't want any diagnostics on my statusline
vim.o.statusline = table.concat {
    "%<%f %h%w%m%r ",
    "%=%{&showcmdloc=='statusline'?'%-10.S ':''}",
    "%{exists('b:keymap_name')? '<'.b:keymap_name.'>':''}",
    "%{&busy>0?'◐ ':''}",
    "%-14.(%l,%c%V%) %P"
}
