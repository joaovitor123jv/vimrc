local M = {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-cmdline',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
    },
}

function M.config()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    
    -- Carrega snippets do friendly-snippets
    require('luasnip.loaders.from_vscode').lazy_load()
    
    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        
        -- Configuração da janela de autocompletar (similar ao YCM)
        window = {
            completion = cmp.config.window.bordered({
                border = 'rounded',
                winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None',
            }),
            documentation = cmp.config.window.bordered({
                border = 'rounded',
                winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None',
            }),
        },
        
        -- Mapeamento de teclas (similar ao YCM)
        mapping = cmp.mapping.preset.insert({
            -- Navegação no menu
            ['<C-n>'] = cmp.mapping.select_next_item(),
            ['<C-p>'] = cmp.mapping.select_prev_item(),
            ['<Down>'] = cmp.mapping.select_next_item(),
            ['<Up>'] = cmp.mapping.select_prev_item(),
            
            -- Scroll na documentação
            ['<C-d>'] = cmp.mapping.scroll_docs(4),
            ['<C-u>'] = cmp.mapping.scroll_docs(-4),
            
            -- Confirmar seleção
            ['<CR>'] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = false, -- Só confirma se algo estiver explicitamente selecionado
            }),
            ['<Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { 'i', 's' }),
            ['<S-Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { 'i', 's' }),
            
            -- Fechar menu
            ['<C-e>'] = cmp.mapping.abort(),
            
            -- Trigger manual do autocompletar
            ['<C-Space>'] = cmp.mapping.complete(),
        }),
        
        -- Fontes de autocompletar (ordem importa)
        sources = cmp.config.sources({
            { 
                name = 'nvim_lsp', 
                priority = 1000,
                -- Configurações para melhor trigger automático
                keyword_length = 0,  -- Aparece imediatamente
                max_item_count = 20, -- Limita itens para performance
            },
            { 
                name = 'luasnip', 
                priority = 750,
                keyword_length = 1,
            },
            { 
                name = 'nvim_lua', 
                priority = 500,
                keyword_length = 1,
            },
        }, {
            { 
                name = 'buffer', 
                priority = 250,
                keyword_length = 2,
                max_item_count = 5,
            },
            { 
                name = 'path', 
                priority = 250,
                keyword_length = 1,
            },
        }),
        
        -- Formatação dos itens no menu (similar ao YCM)
        formatting = {
            fields = { 'kind', 'abbr', 'menu' },
            format = function(entry, vim_item)
                local kind_icons = {
                    Text = '󰉿',
                    Method = '󰆧',
                    Function = '󰊕',
                    Constructor = '',
                    Field = '󰜢',
                    Variable = '󰀫',
                    Class = '󰠱',
                    Interface = '',
                    Module = '',
                    Property = '󰜢',
                    Unit = '󰑭',
                    Value = '󰎠',
                    Enum = '',
                    Keyword = '󰌋',
                    Snippet = '',
                    Color = '󰏘',
                    File = '󰈙',
                    Reference = '󰈇',
                    Folder = '󰉋',
                    EnumMember = '',
                    Constant = '󰏿',
                    Struct = '󰙅',
                    Event = '',
                    Operator = '󰆕',
                    TypeParameter = '',
                }
                
                -- Ícone do tipo
                vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind] or '', vim_item.kind)
                
                -- Menu mostra a fonte
                vim_item.menu = ({
                    nvim_lsp = '[LSP]',
                    luasnip = '[Snippet]',
                    buffer = '[Buffer]',
                    path = '[Path]',
                    nvim_lua = '[Lua]',
                })[entry.source.name]
                
                return vim_item
            end,
        },
        
        -- Configurações de comportamento (similar ao VSCode)
        completion = {
            completeopt = 'menu,menuone,noinsert',
            autocomplete = { 
                require('cmp.types').cmp.TriggerEvent.TextChanged,
                require('cmp.types').cmp.TriggerEvent.InsertEnter,
            },
            keyword_length = 0, -- Aparece imediatamente (0 caracteres)
        },
        
        -- Configurações de performance e trigger
        performance = {
            debounce = 60,      -- Delay em ms antes de mostrar (menor = mais responsivo)
            throttle = 30,      -- Limite de requests por segundo
            fetching_timeout = 500, -- Timeout para buscar completions
            confirm_resolve_timeout = 80,
            async_budget = 1,
            max_view_entries = 200,
        },
        
        -- Configuração experimental para melhor performance
        experimental = {
            ghost_text = false, -- Desabilita texto fantasma (pode ser distrativo)
        },
    })
    
    -- Configuração específica para busca de comandos
    cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = 'buffer' }
        }
    })
    
    -- Configuração específica para linha de comando
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = 'path' }
        }, {
            { name = 'cmdline' }
        })
    })
end

return M
