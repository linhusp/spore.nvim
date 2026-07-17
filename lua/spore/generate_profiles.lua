local calculate_profile = function(target)
    if target < 0 then
        target = 0
    elseif target > 1 then
        target = 1
    end

    local saturation = 1.0 - target
    local contrast = 1.0 - (target * 0.45)

    local g_drop = target - 0.1
    if g_drop < 0 then g_drop = 0 end
    local g_tint = 1.0 - (g_drop * 0.16)

    local b_tint = 1.0 - (target * 0.3)

    saturation = math.floor(saturation * 100 + 0.5) / 100
    contrast = math.floor(contrast * 100 + 0.5) / 100
    g_tint = math.floor(g_tint * 100 + 0.5) / 100
    b_tint = math.floor(b_tint * 100 + 0.5) / 100
    return {
        s = saturation,
        c = contrast,
        tint = { g = g_tint, b = b_tint },
    }
end

local p_low = calculate_profile(0.15)
local p_med = calculate_profile(0.25)
local p_high = calculate_profile(0.40)

print("local profiles = {")
print("    soft = {")
print(string.format("        s = %.2f,", p_low.s))
print(string.format("        c = %.2f,", p_low.c))
print(string.format("        tint = { r = 1.0, g = %.2f, b = %.2f }", p_low.tint.g, p_low.tint.b))
print("    },")
print("    softer = {")
print(string.format("        s = %.2f,", p_med.s))
print(string.format("        c = %.2f,", p_med.c))
print(string.format("        tint = { r = 1.0, g = %.2f, b = %.2f }", p_med.tint.g, p_med.tint.b))
print("    },")
print("    softest = {")
print(string.format("        s = %.2f,", p_high.s))
print(string.format("        c = %.2f,", p_high.c))
print(string.format("        tint = { r = 1.0, g = %.2f, b = %.2f }", p_high.tint.g, p_high.tint.b))
print("    }")
print("}")
