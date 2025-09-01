local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false, -- Carrega imediatamente para evitar problemas
}

function M.config()
   local actions = require "telescope.actions"

   require("telescope").setup({
      defaults = {
         initial_mode = "insert",
         
         -- Configurações essenciais para o filtro funcionar
         file_sorter = require('telescope.sorters').get_fuzzy_file,
         generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
         
         -- Configurações de busca
         vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
         },
         
         mappings = {
            i = {
               -- Navegação no modo insert
               ["<C-j>"] = actions.move_selection_next,
               ["<C-k>"] = actions.move_selection_previous,
               ["<Down>"] = actions.move_selection_next,
               ["<Up>"] = actions.move_selection_previous,
               
               -- Fechar
               ["<C-q>"] = actions.close,
               ["<Esc>"] = actions.close,
               
               -- Enter para abrir arquivo
               ["<CR>"] = actions.select_default,
               
               -- Se acidentalmente sair do modo insert, volta
               ["<Tab>"] = actions.move_selection_next,
               ["<S-Tab>"] = actions.move_selection_previous,
            },

            n = {
               -- No modo normal, 'i' volta para insert
               ["i"] = function() vim.cmd("startinsert") end,
               ["a"] = function() vim.cmd("startinsert") end,
               
               -- Navegação normal
               ["j"] = actions.move_selection_next,
               ["k"] = actions.move_selection_previous,
               ["<Down>"] = actions.move_selection_next,
               ["<Up>"] = actions.move_selection_previous,
               
               -- Fechar
               ["q"] = actions.close,
               ["<Esc>"] = actions.close,
               
               -- Enter para abrir
               ["<CR>"] = actions.select_default,
            }
         }
      },
      
      -- Configurações específicas para cada picker
      pickers = {
         find_files = {
            -- Agora que temos ripgrep instalado, usar ele para melhor performance
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
         },
         live_grep = {
            -- Configurações para busca de texto
            additional_args = function(opts)
               return {"--hidden"}
            end
         },
         current_buffer_fuzzy_find = {
            -- Para busca no buffer atual (Ctrl+l)
            skip_empty_lines = true,
         },
      }
   })

end

return M
