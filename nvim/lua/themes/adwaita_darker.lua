-- Adwaita darker — matches kitty's current-theme.conf (pure black bg #000000)
-- Colors taken directly from ~/.config/kitty/current-theme.conf

local M = {}

M.base_30 = {
  white = "#deddda",
  darker_black = "#000000",
  black = "#000000", --  nvim bg
  black2 = "#0a0a0a",
  one_bg = "#101010",
  one_bg2 = "#1c1c1c",
  one_bg3 = "#282828",
  grey = "#3a3a3a",
  grey_fg = "#4a4a4a",
  grey_fg2 = "#545454",
  light_grey = "#9a9996",
  red = "#ed333b",
  baby_pink = "#f66151",
  pink = "#dc8add",
  line = "#1c1c1c", -- for lines like vertsplit
  green = "#57e389",
  vibrant_green = "#8ff0a4",
  nord_blue = "#62a0ea",
  blue = "#99c1f1",
  yellow = "#f8e45c",
  sun = "#ffa348",
  purple = "#dc8add",
  dark_purple = "#9141ac",
  teal = "#5bc8af",
  orange = "#ff7800",
  cyan = "#93ddc2",
  statusline_bg = "#0a0a0a",
  lightbg = "#1c1c1c",
  pmenu_bg = "#57e389",
  folder_bg = "#62a0ea",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#0a0a0a",
  base02 = "#1c1c1c",
  base03 = "#9a9996",
  base04 = "#b0afac",
  base05 = "#deddda",
  base06 = "#f6f5f4",
  base07 = "#ffffff",
  base08 = "#ed333b",
  base09 = "#ff7800",
  base0A = "#f8e45c",
  base0B = "#57e389",
  base0C = "#5bc8af",
  base0D = "#62a0ea",
  base0E = "#dc8add",
  base0F = "#f66151",
}

M.type = "dark"

M = require("base46").override_theme(M, "adwaita_darker")

return M
