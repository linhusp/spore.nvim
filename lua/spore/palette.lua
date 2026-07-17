-- #1e1c1b #151312 #201c1a #1f201f #1a1d1a #161a14 #1f241d #051a1a #0a1a18 #051a18 #181a19 #0c1716 #121b18 #0d1b19 #101e1a #121613 #101d1a
-- #b5b998 #b8b488 #aba980 #b2ad84 #b8b281 #BDB78B
-- #adb192 #9b9ea4 #989c80 #90946c #80846c #a29567
-- #553617 #a55f39 #b36d43 #bb7744
-- #78824b #78834b #7f8a50 #858f51 #889556 #859254 #8ba164
-- #dab260 #c9a554 #c4a45a
-- #7B7426 #d7c483 #c3b277 #c8b280 #c8b071 #baab76 #b7a776 #baab7c #a09679
-- #6b8e6b #6a8f6a #5f875f #54644d
-- #4e6b53 #75664d #6b826e #6e7a71 #5e5850
-- #a69b65 #9c925f #9b8d59 #968a69 #a19165
-- #6b7a5d #738580 #697257 #747e60 #717b5e
-- #5c5243 #5c635c #62625a #666059 #656558
-- #42403a #3e413a #3f413a
-- #404625 #6d7f57 #6a7b54
-- #3c3314 #685742 #77644c #84785e #907556 #846e52 #77644b
-- #808336 #808368 #8a9b84 #5e8572 #8a8f74 #738580 #868f78

-- #8f9467 #a1a56f #9fa56f #a3a66c #808368 #a7a36f #909475 #9aa06c #aca169
-- #697257 #7d8172 #8a8d77 #91947e #9f9b73 #949a65 #988952 #948c64
-- #685f5a #655f5d #56594c #666866 #5b5d5e

-- #6f7563 #686e5d #646a59 #5c635b #2a322a #2d382d #6f7061 #727364
-- #342f2c #3a3532
-- #1d352e #192e28
-- #122220
-- #253423 #283928 #1d2c1a
-- #222625 #3a3727
-- #241b1a
-- #415448 #3f413a

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
