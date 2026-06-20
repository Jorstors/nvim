return {
  "gelguy/wilder.nvim",
  config = function()
    local wilder = require("wilder")
    wilder.setup({ modes = { ":", "/", "?" } })

    local gradient = {
      "#bd93f9",
      "#c690f5",
      "#cf8df1",
      "#d88aec",
      "#df87e7",
      "#e784e1",
      "#ee81db",
      "#f47ed4",
      "#fa7bcd",
      "#ff79c6",
    }

    for i, fg in ipairs(gradient) do
      gradient[i] = wilder.make_hl("WilderGradient" .. i, "Pmenu", { { a = 1 }, { a = 1 }, { foreground = fg } })
    end

    wilder.set_option(
      "renderer",
      wilder.popupmenu_renderer({
        highlighter = wilder.highlighter_with_gradient({ wilder.basic_highlighter() }),
        highlights = {
          gradient = gradient,
        },
        left = { " ", wilder.popupmenu_devicons() },
        right = { " ", wilder.popupmenu_scrollbar() },
      })
    )
  end,
}
