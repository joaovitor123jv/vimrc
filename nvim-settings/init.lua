require "opts"
require "launch"

spec("plugin.colorscheme")
spec("plugin.treesitter")
spec("plugin.treesitter-context")
spec("plugin.telescope")
spec("plugin.undotree")
spec("plugin.nvim-cmp")
spec("plugin.lsp-zero")
spec("plugin.mason")
spec("plugin.lualine")
spec("plugin.autopairs")
spec("plugin.nvim-tree")
spec("plugin.zig")
-- spec("plugin.gen")

require "plugin.lazy"
require "keymaps"
