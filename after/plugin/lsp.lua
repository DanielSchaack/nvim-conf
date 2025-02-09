local cmp = require('cmp')
local cmp_lsp = require("cmp_nvim_lsp")
local capabilities = vim.tbl_deep_extend(
"force",
{},
vim.lsp.protocol.make_client_capabilities(),
cmp_lsp.default_capabilities())

require("fidget").setup({})
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "jdtls",
        "pylsp",
        "ltex",
    },
    handlers = {
        function(server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
                capabilities = capabilities
            }
        end,
        pylsp = function()
            local lspconfig = require("lspconfig")
            lspconfig.pylsp.setup({
                root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                ignore = {'W391'},
                                maxLineLength = 120
                            }
                        }
                    }
                }
            })
        end,
        ltex = function ()
            local lspconfig = require("lspconfig")
            lspconfig.ltex.setup({
                autostart = false,
                filetypes = {},
                settings = {
                    ltex = {
                        checkFrequency = "save",
                        language = "en-US",
                        additionalRules = {
                            languageModel = "~/.local/share/ngrams/",
                            -- enablePickyRules = true,
                            -- motherTongue = "de",
                        },
                        disabledRules = {
                            ["en"] = { "MORFOLOGIK_RULE_EN" },
                            ["en-GB"] = { "MORFOLOGIK_RULE_EN_GB" },
                            ["en-US"] = { "MORFOLOGIK_RULE_EN_US" },
                            ["de"] = { "MORFOLOGIK_RULE_DE_DE" },
                        },
                    },
                }
            })
        end,
    }
})
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }, {
        { name = 'buffer' },
    })
})


