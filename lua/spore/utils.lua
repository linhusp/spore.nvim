local M = {}

-- Hardcoded physics emulation profiles
-- Checkout `generate_profiles.lua` to generate custom profiles
local profiles = {
    soft = {
        s = 0.85,
        c = 0.93,
        tint = { r = 1.0, g = 0.99, b = 0.96 },
    },
    softer = {
        s = 0.75,
        c = 0.89,
        tint = { r = 1.0, g = 0.98, b = 0.93 },
    },
    softest = {
        s = 0.65,
        c = 0.84,
        tint = { r = 1.0, g = 0.96, b = 0.90 },
    },
}

local bg_r = 0
local bg_g = 0
local bg_b = 0

M.parse = function(bg_hex)
    if not bg_hex then return end
    if not string.sub(bg_hex, 1, 1) == '#' then return end

    local bg_clean = string.gsub(bg_hex, '#', '')
    bg_r = tonumber(string.sub(bg_clean, 1, 2), 16)
    bg_g = tonumber(string.sub(bg_clean, 3, 4), 16)
    bg_b = tonumber(string.sub(bg_clean, 5, 6), 16)
end

-- Transforms raw RGB channels based on true perceptual reader constraints
M.shift = function(hex_color, mode)
    local profile = profiles[mode]
    if not profile or hex_color == 'NONE' or not hex_color:find('^#') then
        return hex_color
    end

    -- Parse Hex to Decimal
    local clean = hex_color:gsub('#', '')
    local r = tonumber(clean:sub(1, 2), 16)
    local g = tonumber(clean:sub(3, 4), 16)
    local b = tonumber(clean:sub(5, 6), 16)

    -- Rec. 709 Perceptual Luminance
    local y = (0.2126 * r) + (0.7152 * g) + (0.0722 * b)

    -- Desaturation Matrix
    local r_prime = y + profile.s * (r - y)
    local g_prime = y + profile.s * (g - y)
    local b_prime = y + profile.s * (b - y)

    -- Dynamic Contrast Flattening (relative to background channels)
    local r_double = bg_r + profile.c * (r_prime - bg_r)
    local g_double = bg_g + profile.c * (g_prime - bg_g)
    local b_double = bg_b + profile.c * (b_prime - bg_b)

    -- Tinting multiplier
    local final_r = r_double * profile.tint.r
    local final_g = g_double * profile.tint.g
    local final_b = b_double * profile.tint.b

    -- Clamping
    if final_r < 0 then
        final_r = 0
    elseif final_r > 255 then
        final_r = 255
    end
    if final_g < 0 then
        final_g = 0
    elseif final_g > 255 then
        final_g = 255
    end
    if final_b < 0 then
        final_b = 0
    elseif final_b > 255 then
        final_b = 255
    end

    -- Return new hex color
    return string.format('#%02x%02x%02x', final_r, final_g, final_b)
end

return M
