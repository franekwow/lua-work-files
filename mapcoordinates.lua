local cities = {
    [1470] = {   -- Stormwind
        ["Cathedral Square"] = {
            {446.75,353.106}, {510,424}, {554.79,408.974}, {609.29,365.974},
            {612.449,330.347}, {583.5,295.25}, {503,265.5}, {448.618,309.5},
        },
        ["Trade District"] = {
            {568.22,435.166}, {621.554,398.332}, {644.368,400.272}, {698.202,456.773},
            {698,484.834}, {647.167,524.667}, {597.667,511.167}, {568.667,458.501},
        },
        ["Mage Quarter"] = {
            {573.75,520.75}, {531.75,472.75}, {471,458.327}, {402.5,498.327},
            {405.667,555.66}, {425.167,588.66}, {496,608.25}, {559.5,567.25},
        },
        ["Dwarven District"] = {
            {591,247.5}, {649.25,320}, {674,318}, {714,288.667}, {704.334,239.333},
            {678.192,167.333}, {652.334,151.667}, {614,164}, {575.5,195.5},
        },
        ["Old Town"] = {
            {724.925,324.62}, {679.111,358.539}, {678.192,379.571}, {733.442,445.321},
            {802.25,470}, {845.75,407.25}, {772.5,342.5},
        },
        ["Alleria"] = {
            {483.937,304.155}, {505.824,332.347}, {520.487,344.128}, {535.563,332.51},
            {527.22,315.859}, {505.333,287.667},
        },
    },
    [1469] = {   -- Ogrimmar
        ["Valley of Strength"] = {
            {431.333,431.5}, {430.4,471.429}, {440.741,533.75}, {458.434,633.728},
            {590.665,618.833}, {590.665,526.166}, {563.016,449.834}, {523.756,439.736},
            {497.908,409.619}, {466.612,416.501},
        },
        ["Valley of Spirits"] = {
            {440,408.167}, {431.401,429.125}, {430.626,471.371}, {440.795,533.887},
            {383.333,599.833}, {338,570.833}, {263.667,478.833}, {271,396.5}, {340,370.5},
        },
        ["Valley of Wisdom"] = {
            {530.333,331.333}, {546.5,286.833}, {471.75,255.75}, {389,252.75},
            {351.736,299.25}, {394.55,385.351}, {442.957,402.384},
        },
        ["The Drag"] = {
            {523.556,439.759}, {497.876,409.828}, {531.602,333}, {554.747,268.167},
            {569.667,270.5}, {596.036,307.458}, {599.569,323.934}, {596.86,326.072},
            {607.651,340.344}, {610.091,338.683}, {617.688,343.906}, {625.118,358.879},
            {611.604,425.937}, {581.059,449.565},
        },
        ["Valley of Honor"] = {
            {668.334,382.5}, {792.667,318.167}, {778,182.167}, {679,139.25},
            {586.5,197.75}, {585.5,291.869}, {596.527,307.195}, {599.989,324.053},
            {596.99,326.572}, {607.281,340.182}, {610.485,338.088},
            {628.356,351.187},
        },
        ["Thrall"] = {
            {495.15,492.772}, {499.704,484.548}, {501.803,478.953}, {499.704,469.164},
            {494.59,462.937}, {487.103,460.072}, {477.653,462.171}, {470.303,468.465},
            {468.05,476.087}, {470.303,484.548}, {476.603,491.541}, {482.903,493.639},
            {491.85,494.238}, {490.75,500.216}, {496,503.014}, {500.2,500.915},
            {501.25,495.321},
        },
        ["HandCrystals"] = {},
    },
}


local mapx, mapy = 1000, 666
local sf = string.format
local unpack = table.unpack

print("districts = {")
for city, dists in pairs(cities) do
    print("\t[" .. city .. "] = {")
    for dist, coords in pairs(dists) do
        print("\t\t[\""..dist.."\"] = {")
        local str = ""
        for _, c in ipairs(coords) do
            local x, y = unpack(c)
            x, y = x/mapx, y/mapy
            str = str .. "{"..sf("%.4f", x)..", "..sf("%.4f", y).."}, "
        end
        print("\t\t\t" .. str)
        print("\t\t},")
    end
    print("\t},")
end
print("}")

do
    print("\nHand in area - Ogrimmar")
    local handin_crystals = {
        {0.568, 0.482}, {0.575, 0.474}, {0.579, 0.482}, {0.572, 0.491}
    }
    print("area_handin = {")

    local str = ""
    for _, c in ipairs(handin_crystals) do
        local x, y = unpack(c)
        x, y = x*mapx, y*mapy
        str = str .. "{"..sf("%.1f", x)..", "..sf("%.1f", y).."}, "
    end
    print("\t" .. str)
    print("}")
end


-- do
--     local function from_map(coords)
--         local mx, my = 1000, 666
--         for _, c in ipairs(coords) do
--             local x, y = table.unpack(c)
--             x, y = x*mx/100, y*my/100
--             print("{" .. x .. ", " .. y .. "}")
--         end
--     end
--
--     local cs = {
--         {43, 70.5},
--         {43, 76},
--         {42, 58.4},
--         {51.9, 65.2},
--         {60.5, 49.7},
--     }
--
--     from_map(cs)
-- end
