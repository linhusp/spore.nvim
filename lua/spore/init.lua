local M = {}

M.load = function(variant)
    if not variant then variant = 'none' end
    vim.o.termguicolors = true

    if vim.g.colors_name then
        vim.cmd('highlight clear')
        vim.cmd('syntax reset')
        vim.o.background = 'dark'
    end

    if variant == 'none' then
        vim.g.colors_name = 'spore'
    else
        vim.g.colors_name = 'spore-' .. variant
    end

    local og_palette = require('spore.palette')
    local palette = vim.tbl_deep_extend('force', {}, og_palette)
    local color_shifter = require('spore.utils')

    color_shifter.parse(palette.bg)

    -- --- Start of  Options -----------------------------------------

    -- Transparent background
    if vim.g.spore_transparent_background == true then
        palette.bg = 'NONE'
    end

    -- Desaturation variants
    local protected_colors = {
        bg = true,
        tree = true,
    }
    if variant ~= 'none' then
        for key, color in pairs(palette) do
            if not protected_colors[key] then
                palette[key] = color_shifter.shift(color, variant)
            end
        end
    end

    -- Zen mode
    if vim.g.spore_zen_mode == true then
        palette.function_fg = palette.fg
        palette.identifier_fg = palette.moss
        palette.special_fg = palette.grass
        palette.delimiter_fg = palette.moss
    end

    -- --- End of options --------------------------------------------

    local default_hls = require('spore.highlights').build(palette)
    local plugin_hls = require('spore.plugins').build(palette)

    for group, hl in pairs(default_hls) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    for group, hl in pairs(plugin_hls) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
