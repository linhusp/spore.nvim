local M = {}

M.build = function(c)
    return {
        -- indenmini
        IndentLine = { fg = c.shade },
        IndentLineCurrent = { fg = c.moss },

        -- gitsigns
        GitSignsAdd = { link = 'Added' },
        GitSignsChange = { link = 'Changed' },
        GitSignsDelete = { link = 'Removed' },

        -- mini.pick
        MiniPickBorder = { link = 'FloatBorder' },
        MiniPickBorderBusy = { link = 'DiagnosticFloatingWarn' },
        MiniPickBorderText = { link = 'FloatTitle' },
        MiniPickCursor = { nocombine = true, blend = 100 },
        MiniPickIconDirectory = { link = 'Directory' },
        MiniPickIconFile = { link = 'MiniPickNormal' },
        MiniPickHeader = { link = 'DiagnosticFloatingHint' },
        MiniPickMatchCurrent = { link = 'PmenuSel' },
        MiniPickMatchRanges = { link = 'PmenuMatch' },
        MiniPickNormal = { link = 'NormalFloat' },
        MiniPickPreviewLine = { link = 'CursorLine' },
        MiniPickPreviewRegion = { link = 'IncSearch' },
        MiniPickPrompt = { bg = c.bg },
        MiniPickPromptCaret = { fg = c.tree },
        MiniPickPromptPrefix = { fg = c.tree },

        -- blink.cmp
        BlinkCmpDoc= { link = 'NormalFloat' },
        BlinkCmpDocBorder = { link = 'FloatBorder' },
        BlinkCmpDocCursorline = { link = 'Visual' },
        BlinkCmpDocSeparator = { fg = c.bark, bg = c.border_nc },
        BlinkCmpLabelMatch = { link = 'PmenuMatch' },
        BlinkCmpMenuBorder = { link = 'PmenuBorder' },
        BlinkCmpSignatureHelp = { link = 'NormalFloat' },
        BlinkCmpSignatureHelpBorder = { link = 'FloatBorder' },
    }
end

return M
