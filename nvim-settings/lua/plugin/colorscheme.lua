local M = {
    -- "rose-pine/nvim",
    "rebelot/kanagawa.nvim",
    -- "folke/tokyonight.nvim",
    -- "Th3Whit3Wolf/space-nvim",
    lazy = false, -- Loads this plugin at the beginning
    priority = 1000,
}

function M.config()
	-- vim.cmd.colorscheme "rose-pine"
	vim.cmd.colorscheme "kanagawa"
	-- vim.cmd.colorscheme "tokyonight"
	-- vim.cmd.colorscheme "space-nvim"
    -- vim.g.space_nvim_transparent_bg = true; -- Require terminal with transparent background
    -- vim.o.background = "light"
end

return M

