return {
    "theprimeagen/harpoon",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<C-h>h", ui.toggle_quick_menu)
        vim.keymap.set("n", "<C-h>t", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-h>n", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-h>s", function() ui.nav_file(3) end)
    end
}
