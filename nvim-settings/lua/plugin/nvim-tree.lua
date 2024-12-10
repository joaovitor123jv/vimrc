local M = {
   "nvim-tree/nvim-tree.lua"
}

function M.config()
   require("nvim-tree").setup({
      sort = {
         sorter = "case_sensitive"
      },
      view = {
         width = 30
      },
      renderer = {
         group_empty = true
      },
      filters = {
         dotfiles = true
      }
   })
end

return M

