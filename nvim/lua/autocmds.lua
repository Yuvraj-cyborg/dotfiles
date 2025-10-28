require "nvchad.autocmds"

local bg = "#171717"

local function apply_bg()
  local set_hl = vim.api.nvim_set_hl
  local groups = {
    "Normal", "NormalNC", "SignColumn", "EndOfBuffer",
    "NormalFloat", "FloatBorder", "WinSeparator",
    -- NvimTree
    "NvimTreeNormal", "NvimTreeNormalNC", "NvimTreeEndOfBuffer", "NvimTreeWinSeparator",
    -- Neo-tree (in case it's used)
    "NeoTreeNormal", "NeoTreeNormalNC", "NeoTreeEndOfBuffer", "NeoTreeWinSeparator",
  }

  for _, grp in ipairs(groups) do
    if grp == "WinSeparator" or grp:find("WinSeparator") then
      set_hl(0, grp, { fg = bg, bg = bg })
    else
      set_hl(0, grp, { bg = bg })
    end
  end
end

local aug = vim.api.nvim_create_augroup("Bg171717Override", { clear = true })
vim.api.nvim_create_autocmd({ "ColorScheme", "UIEnter" }, {
  group = aug,
  callback = apply_bg,
})

-- Re-apply after NvimTree/Neo-tree windows open (plugins may reset highlights on open)
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = aug,
  pattern = { "NvimTree", "neo-tree" },
  callback = function()
    -- defer to ensure we run after the plugin sets its own highlights
    vim.defer_fn(apply_bg, 10)
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
  group = aug,
  pattern = { "NvimTree*", "neo-tree*" },
  callback = function()
    vim.defer_fn(apply_bg, 10)
  end,
})
