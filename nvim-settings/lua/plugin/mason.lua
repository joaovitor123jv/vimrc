local M = {
    'williamboman/mason.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
        'nvim-lua/plenary.nvim',
        'hrsh7th/cmp-nvim-lsp', -- Para integração com nvim-cmp
    },
}

M.servers = {
    "lua_ls",
    "clangd",
    "pyright",
    "rust_analyzer",
    "zls",
    "ts_ls",           -- TypeScript/JavaScript (new name)
    "eslint",          -- ESLint for JS/TS
    "html",            -- HTML
    "cssls",           -- CSS
    "jsonls"           -- JSON
}

function M.config()
    require("mason").setup()
    
    require("mason-lspconfig").setup {
        ensure_installed = M.servers,
        automatic_installation = true,
    }

    -- Configurações específicas dos servidores LSP
    local lspconfig = require('lspconfig')
    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Configuração do Lua LSP
    lspconfig.lua_ls.setup({
        capabilities = lsp_capabilities,
        settings = {
            Lua = {
                runtime = { version = 'LuaJIT' },
                diagnostics = {
                    globals = { 'vim', 'require' }
                },
                workspace = {
                    checkThirdParty = false,
                    library = vim.api.nvim_get_runtime_file("", true)
                }
            }
        }
    })

    -- Configuração do TypeScript/JavaScript LSP
    lspconfig.ts_ls.setup({
        capabilities = lsp_capabilities,
        settings = {
            typescript = {
                inlayHints = {
                    includeInlayParameterNameHints = 'all',
                    includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                    includeInlayFunctionParameterTypeHints = true,
                    includeInlayVariableTypeHints = true,
                    includeInlayPropertyDeclarationTypeHints = true,
                    includeInlayFunctionLikeReturnTypeHints = true,
                    includeInlayEnumMemberValueHints = true,
                }
            },
            javascript = {
                inlayHints = {
                    includeInlayParameterNameHints = 'all',
                    includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                    includeInlayFunctionParameterTypeHints = true,
                    includeInlayVariableTypeHints = true,
                    includeInlayPropertyDeclarationTypeHints = true,
                    includeInlayFunctionLikeReturnTypeHints = true,
                    includeInlayEnumMemberValueHints = true,
                }
            }
        }
    })

    -- Configuração dos outros LSPs
    lspconfig.clangd.setup({ capabilities = lsp_capabilities })
    lspconfig.pyright.setup({ capabilities = lsp_capabilities })
    lspconfig.rust_analyzer.setup({ capabilities = lsp_capabilities })
    lspconfig.zls.setup({ capabilities = lsp_capabilities })
    lspconfig.eslint.setup({ capabilities = lsp_capabilities })
    lspconfig.html.setup({ capabilities = lsp_capabilities })
    lspconfig.cssls.setup({ capabilities = lsp_capabilities })
    lspconfig.jsonls.setup({ capabilities = lsp_capabilities })

    -- Configuração de diagnósticos
    vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = false,
    })
end

return M
