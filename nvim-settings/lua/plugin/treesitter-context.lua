local M = {
   "nvim-treesitter/nvim-treesitter-context",
   dependencites = {
      "nvim-treesitter/nvim-treesitter",
   },
}

M.config = function()
   require("treesitter-context").setup()
end

return M
