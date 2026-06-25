require "nvchad.autocmds"

-- Kitty padding toggle: remove padding when neovim opens, restore when it closes.
-- Requires kitty: allow_remote_control yes

local function kitty_padding(action)
  local padding = action == "remove" and 0 or 25
  -- Use KITTY_LISTEN_ON env var (auto-set by kitty for child processes)
  local socket = vim.fn.getenv("KITTY_LISTEN_ON")
  local cmd
  if socket and socket ~= vim.NIL and socket ~= "" then
    cmd = string.format("kitty @ --to %s set-spacing padding=%d 2>/dev/null", socket, padding)
  else
    -- Fallback: kitty @ without --to works for direct child processes
    cmd = string.format("kitty @ set-spacing padding=%d 2>/dev/null", padding)
  end
  vim.fn.system(cmd)
end

local kitty_aug = vim.api.nvim_create_augroup("KittyPaddingToggle", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  group = kitty_aug,
  callback = function()
    kitty_padding("remove")
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  group = kitty_aug,
  callback = function()
    kitty_padding("restore")
  end,
})
