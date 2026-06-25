-- Gruber Darker — ported from rexim/gruber-darker-theme (Emacs)
-- https://github.com/rexim/gruber-darker-theme

local M = {}

M.base_30 = {
  white = "#e4e4ef",
  darker_black = "#141414",
  black = "#181818", --  nvim bg
  black2 = "#1e1e1e",
  one_bg = "#252525",
  one_bg2 = "#282828",
  one_bg3 = "#453d41",
  grey = "#484848",
  grey_fg = "#52494e",
  grey_fg2 = "#565f73",
  light_grey = "#95a99f",
  red = "#f43841",
  baby_pink = "#ff4f58",
  pink = "#9e95c7",
  line = "#282828", -- for lines like vertsplit
  green = "#73c936",
  vibrant_green = "#84c936",
  nord_blue = "#96a6c8",
  blue = "#96a6c8",
  yellow = "#ffdd33",
  sun = "#ffe066",
  purple = "#9e95c7",
  dark_purple = "#565f73",
  teal = "#95a99f",
  orange = "#cc8c3c",
  cyan = "#95a99f",
  statusline_bg = "#141414",
  lightbg = "#282828",
  pmenu_bg = "#73c936",
  folder_bg = "#96a6c8",
}

M.base_16 = {
  base00 = "#181818",
  base01 = "#282828",
  base02 = "#453d41",
  base03 = "#52494e",
  base04 = "#95a99f",
  base05 = "#e4e4ef",
  base06 = "#f4f4ff",
  base07 = "#f5f5f5",
  base08 = "#f43841",
  base09 = "#cc8c3c",
  base0A = "#ffdd33",
  base0B = "#73c936",
  base0C = "#95a99f",
  base0D = "#96a6c8",
  base0E = "#9e95c7",
  base0F = "#c73c3f",
}

M.type = "dark"

M = require("base46").override_theme(M, "gruber_darker")

return M
