require("crash.core")
require("crash.lazy")

if vim.g.neovide then
    vim.o.guifont = "Mononoki Nerd Font:h14"
    vim.g.neovide_opacity = 0.8
    vim.g.neovide_cursor_trail_size = 0.85
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_vfx_mode = "torpedo"
end
