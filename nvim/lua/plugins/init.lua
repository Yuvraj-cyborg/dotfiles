return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- Supermaven inline AI completions
  {
    "supermaven-inc/supermaven-nvim",
    -- make commands available and load plugin when they are executed
    cmd = {
      "SupermavenStart",
      "SupermavenStop",
      "SupermavenRestart",
      "SupermavenToggle",
      "SupermavenStatus",
      "SupermavenUseFree",
      "SupermavenUsePro",
      "SupermavenLogout",
      "SupermavenShowLog",
      "SupermavenClearLog",
    },
    event = "InsertEnter",
    config = function()
      require("supermaven-nvim").setup({
        -- set to true to rely on nvim-cmp only
        disable_inline_completion = false,
        -- set keymaps if you want to override defaults
        -- keymaps = { accept_suggestion = "<Tab>", clear_suggestion = "<C-]>", accept_word = "<C-j>" },
      })
    end,
  },

  -- add Supermaven source to nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, 1, { name = "supermaven" })
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
