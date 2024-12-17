local M = {
    'ziglang/zig.vim',
}

function M.config()
    -- Dont show parse errors, nor format on save. Use LSP things instead
    vim.g.zig_fmt_autosave = 0
    vim.g.zig_fmt_parse_errors = 0

    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = {"*.zig", "*.zon"},
        callback = function(ev)
            vim.lsp.buf.format()
        end
    })
end

return M
