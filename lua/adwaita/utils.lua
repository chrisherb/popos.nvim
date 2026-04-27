local M = {}

local nvim_set_hl = function(ns_id)
    return function(name, val)
        vim.api.nvim_set_hl(ns_id, name, val)
    end
end

M.highlight = nvim_set_hl(0)

M.gen_colors = function()
    local colors
    if vim.o.background == 'dark' then
        colors = {
            blue_1              = "#5B8FCE",
            blue_2              = "#4A82C4",
            blue_3              = "#3465A4",
            blue_4              = "#2A5490",
            blue_5              = "#234C7F",
            blue_6              = "#1C4168",
            blue_7              = "#153451",
            brown_1             = "#9E8574",
            brown_2             = "#8A725F",
            brown_3             = "#755F4D",
            brown_4             = "#614F40",
            brown_5             = "#4D4033",
            chameleon_3         = "#4E9A06",
            dark_1              = "#5A5A5A",
            dark_2              = "#4A4A4A",
            dark_3              = "#3D3D3D",
            dark_4              = "#333333",
            dark_5              = "#272727",
            dark_6              = "#1A1A1A",
            dark_7              = "#000000",
            green_1             = "#8FD98F",
            green_2             = "#6BC462",
            green_3             = "#4E9A06",
            green_4             = "#3F7D05",
            green_5             = "#346604",
            green_6             = "#294F03",
            green_7             = "#1E3802",
            libadwaita_dark     = "#262626",
            libadwaita_dark_alt = "#2E2E2E",
            libadwaita_popup    = "#3D3D3D",
            libadwaita_tree     = "#333333",
            light_1             = "#EEEEEC",
            light_2             = "#E8E8E6",
            light_3             = "#D3D7CF",
            light_4             = "#B8BDB5",
            light_5             = "#9EA39B",
            light_6             = "#858981",
            light_7             = "#6B7067",
            orange_1            = "#F6803C",
            orange_2            = "#F15D22",
            orange_3            = "#D9521E",
            orange_4            = "#B84519",
            orange_5            = "#963915",
            purple_1            = "#C49AB8",
            purple_2            = "#AD7FA8",
            purple_3            = "#75507B",
            purple_4            = "#614267",
            purple_5            = "#4D3553",
            red_1               = "#E04F4F",
            red_2               = "#CC0000",
            red_3               = "#B30000",
            red_4               = "#990000",
            red_5               = "#800000",
            teal_1              = "#5EEAE9",
            teal_2              = "#34E2E2",
            teal_3              = "#06989A",
            teal_4              = "#057F81",
            teal_5              = "#046668",
            violet_2            = "#99A0C9",
            violet_3            = "#7D8AC7",
            violet_4            = "#6362C8",
            yellow_1            = "#E8D44D",
            yellow_2            = "#C4A000",
            yellow_3            = "#AB8C00",
            yellow_4            = "#8F7600",
            yellow_5            = "#736000",
            yellow_6            = "#584A00",
            split_and_borders   = "#2E2E2E",
            menu_selected       = "#404040"
        }
    else
        colors = {
            blue_1      = "#5B8FCE",
            blue_2      = "#4A82C4",
            blue_3      = "#3465A4",
            blue_4      = "#2A5490",
            blue_5      = "#234C7F",
            blue_6      = "#1C4168",
            blue_7      = "#153451",
            brown_1     = "#9E8574",
            brown_2     = "#8A725F",
            brown_3     = "#755F4D",
            brown_4     = "#614F40",
            brown_5     = "#4D4033",
            chameleon_3 = "#4E9A06",
            dark_1      = "#5A5A5A",
            dark_2      = "#4A4A4A",
            dark_3      = "#3D3D3D",
            dark_4      = "#333333",
            dark_5      = "#272727",
            dark_6      = "#1A1A1A",
            green_1     = "#8FD98F",
            green_2     = "#6BC462",
            green_3     = "#4E9A06",
            green_4     = "#3F7D05",
            green_5     = "#346604",
            green_6     = "#294F03",
            green_7     = "#1E3802",
            light_1     = "#EEEEEC",
            light_2     = "#E8E8E6",
            light_3     = "#D3D7CF",
            light_4     = "#B8BDB5",
            light_5     = "#9EA39B",
            light_6     = "#858981",
            light_7     = "#6B7067",
            orange_1    = "#F6803C",
            orange_2    = "#F15D22",
            orange_3    = "#D9521E",
            orange_4    = "#B84519",
            orange_5    = "#963915",
            purple_1    = "#C49AB8",
            purple_2    = "#AD7FA8",
            purple_3    = "#75507B",
            purple_4    = "#614267",
            purple_5    = "#4D3553",
            red_1       = "#E04F4F",
            red_2       = "#CC0000",
            red_3       = "#B30000",
            red_4       = "#990000",
            red_5       = "#800000",
            teal_1      = "#5EEAE9",
            teal_2      = "#34E2E2",
            teal_3      = "#06989A",
            teal_4      = "#057F81",
            teal_5      = "#046668",
            violet_2    = "#99A0C9",
            violet_3    = "#7D8AC7",
            violet_4    = "#6362C8",
            yellow_1    = "#E8D44D",
            yellow_2    = "#C4A000",
            yellow_3    = "#AB8C00",
            yellow_4    = "#8F7600",
            yellow_5    = "#736000",
            yellow_6    = "#584A00",
        }
    end
    if vim.g.adwaita_darker then
        colors.libadwaita_dark     = "#0D0D0D"
        colors.libadwaita_dark_alt = "#1A1A1A"
        colors.libadwaita_tree     = "#141414"
        colors.split_and_borders   = "#1C1C1C"
    end

    if vim.g.adwaita_transparent then
        colors.libadwaita_dark = 'none'
    end

    return colors
end

return M
