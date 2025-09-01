local M = {
   'VonHeikemen/lsp-zero.nvim',
   branch = "v1.x",
   dependencies = {
      -- LSP support
      'neovim/nvim-lspconfig',
   },
}

function M.config()
    local lsp = require('lsp-zero')
    lsp.preset('recommended')
    
    -- Configuração para integrar com nvim-cmp
    lsp.setup_nvim_cmp({
        set_sources = 'recommended',
        set_basic_mappings = false, -- Usaremos os mappings customizados do nvim-cmp
        set_extra_mappings = false,
        use_luasnip = true,
        set_format = false, -- Usaremos formatação customizada
        documentation_window = true,
    })
    
    -- Configurações de preferências
    lsp.set_preferences({
        suggest_lsp_servers = false,
        sign_icons = {
            error = 'E',
            warn = 'W', 
            hint = 'H',
            info = 'I'
        }
    })
    
    -- Configuração quando um LSP se conecta a um buffer
    lsp.on_attach(function(client, bufnr)
        local opts = {buffer = bufnr, remap = false}
        
        -- Keymaps para navegação LSP (similar ao YCM)
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)
        
        -- Diagnósticos
        vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end)
    
    -- Finaliza a configuração
    lsp.setup()
end

return M
