return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                disable_devicons = true,

                mappings = {
                    n = {
                        ["<C-s>"] = function(prompt_bufnr)
                            actions.smart_send_to_qflist(prompt_bufnr)
                            actions.open_qflist(prompt_bufnr)
                        end,
                        ["go"] = "move_to_top",
                    },
                    i = {
                        ["<C-s>"] = function(prompt_bufnr)
                            actions.smart_send_to_qflist(prompt_bufnr)
                            actions.open_qflist(prompt_bufnr)
                        end
                    }
                }
            },
            pickers = {
                find_files = {
                    theme = "ivy",
                },
                help_tags = {
                    theme = "ivy",
                },
            },
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>p', builtin.find_files, {})
        vim.keymap.set('n', '<leader>th', builtin.help_tags, {})

        require "ilhan.telescope.multigrep".setup()
    end
}
