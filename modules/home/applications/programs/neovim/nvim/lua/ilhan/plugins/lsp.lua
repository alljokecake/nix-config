-- TODO: Remove Mason once LSPs/formatters are managed declaratively in flake.nix.
return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" }, -- Only load when editing files
    dependencies = {
        {
            "williamboman/mason.nvim",
            cmd = "Mason", -- Only load Mason when explicitly called
            build = ":MasonUpdate",
        },
        {
            "williamboman/mason-lspconfig.nvim",
            dependencies = { "mason.nvim" },
        },
        {
            "hrsh7th/nvim-cmp",
            event = "InsertEnter", -- Only load completion when entering insert mode
            dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                {
                    "L3MON4D3/LuaSnip",
                    build = "make install_jsregexp", -- Optional but recommended
                },
                "saadparwaiz1/cmp_luasnip",
            },
        },
        {
            "stevearc/conform.nvim",
            event = "BufWritePre", -- Only load when about to save
            cmd = "ConformInfo",
        },
        {
            "j-hui/fidget.nvim",
            event = "LspAttach", -- Only load when LSP actually attaches
        },
    },
    config = function()
        -- Setup conform (formatting)
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                rust = { "rustfmt" },
                -- Add other formatters as needed
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        })

        -- Setup fidget (LSP progress)
        require("fidget").setup({})

        -- Setup mason
        require("mason").setup()

        -- LSP capabilities
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        -- Mason LSP config
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities
                    })
                end,
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup({
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                format = {
                                    enable = true,
                                    defaultConfig = {
                                        indent_style = "space",
                                        indent_size = "2",
                                    }
                                },
                                diagnostics = {
                                    globals = { "vim" }, -- Recognize vim global
                                },
                                workspace = {
                                    library = vim.api.nvim_get_runtime_file("", true),
                                },
                            }
                        }
                    })
                end,
            }
        })

        -- Setup completion (only when cmp is loaded)
        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = "copilot", group_index = 2 },
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
            })
        })

        -- Diagnostic configuration
        vim.diagnostic.config({
            virtual_text = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })

        -- LSP keymaps (set up when LSP attaches)
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf }
                vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, opts)
                -- Add more LSP keymaps here as needed
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            end,
        })
    end
}
