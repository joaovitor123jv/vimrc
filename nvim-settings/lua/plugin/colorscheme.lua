local M = {
    -- "rose-pine/nvim",
    "rebelot/kanagawa.nvim",
    lazy = false, -- Loads this plugin at the beginning
    priority = 1000, 
}

function M.config()
	-- vim.cmd.colorscheme "rose-pine"
	vim.cmd.colorscheme "kanagawa"
end

return M

