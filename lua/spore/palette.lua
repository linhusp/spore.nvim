-- base
local M = {
    bg = '#101d1a',
    fg = '#b6a677',
    clay = '#bb7744',
    grass = '#808a51',
    sand = '#bc9c52',
    tree = '#5f875f',
    rock = '#846e52',
    seed = '#968854',
    moss = '#7c8b6d',
    bark = '#68685a',
    shade = '#45473e',
}

-- default
M.function_fg = M.grass
M.identifier_fg = M.fg
M.special_fg = M.clay
M.delimiter_fg = M.moss

-- ui
M.special_char = '#73705c'
-- M.panel_bg = '#20211c'
M.focus_bg = '#1d352e'
M.focus_bg = '#192e28'
M.float_bg = '#152823'
M.shadow_bg = '#122220'

-- diff
M.diff_add_bg = '#273725'
M.diff_change_bg = M.focus_bg -- '#30362b'
M.diff_delete_bg = '#3a2f27'
M.diff_text_bg = M.moss

return M
