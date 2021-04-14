local wezterm = require('wezterm')

return {
    hide_tab_bar_if_only_one_tab = true,
    enable_scroll_bar = false,
    
    colors = {
        background = "#282A36",
        foreground = "#F8F8F2",
        selection_bg = "#F8F8F2",
        selection_fg = "#44475A",
        cursor_bg = "#F8F8F2",
        cursor_fg = "#44475A",
        cursor_border = "#F8F8F2",


        -- black, red, green, yellow, blue, magenta, cyan, white
        ansi = {"#21222C", "#FF5555", "#50FA7B", "#F1FA8C", "#BD93F9", "#FF79C6", "#8BE9FD", "#F8F8F2"},
        brights = {"#6272A4", "#FF6E6E", "#69FF94", "#FFFFA5", "#D6ACFF", "#FF92DF", "#A4FFFF", "#FFFFFF"}
    },
    

    window_padding = {
        top = 16,
        right = 16,
        bottom = 16,
        left = 16
    },
    
    font = wezterm.font('JetBrainsMono Nerd Font'),
    font_size = 10.0,
}
