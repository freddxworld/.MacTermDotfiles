return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    styles = {
      comments = {italic = true},
      sidebars = 'transparent',
      floats = 'transparent',
    },
    terminal_colors = true,
    lualine_bold = true,
    dim_inactive = true,
    hide_inactive_statusline = true,
    sidebars = { "qf", "help" }
  }
}
