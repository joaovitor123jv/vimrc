-- telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-f>", builtin.find_files)
vim.keymap.set("n", "<C-g>", builtin.git_files)
vim.keymap.set("n", "<C-l>", builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<C-s>", builtin.live_grep)

-- lsp && mason keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename)


-- undotree keymaps
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


-- gen keymaps
-- vim.keymap.set('v', '<leader>ia', ':Gen<CR>')

-- nvim-tree keymaps
local nvim_tree_api = require("nvim-tree.api")

vim.keymap.set("n", "<C-b>", nvim_tree_api.tree.toggle)

