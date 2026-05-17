-- conf/window.lua

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 8,

        border_size = 0,
        -- no_border_on_floating = false,

        -- col.active_border   = ...,  -- set these in your theme file or here:
        -- col.inactive_border = ...,

        resize_on_border = false,
        allow_tearing    = false,
        layout           = "dwindle",
        no_focus_fallback = true,
    },
})
