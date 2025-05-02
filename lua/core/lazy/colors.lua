
function ColorMyPencils(color)
    color = color
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return {
    {
        'ramojus/mellifluous.nvim',
        name = 'mellifluous',
        config = function()
            ColorMyPencils('mellifluous')
        end
    },
}
