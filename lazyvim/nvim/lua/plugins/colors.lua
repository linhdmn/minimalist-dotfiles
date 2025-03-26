return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main",
        dark_variant = "main",
        disable_float_background = false,
        disable_background = false,
        styles = {
          italic = false,
        },
        highlight_groups = {
          -- Force the correct background color to match Alacritty
          Normal = { bg = "#191724" },
          NormalFloat = { bg = "#191724" },
          StatusLine = { bg = "#191724" },
          StatusLineNC = { bg = "#191724" },

          -- These additional groups help with consistency
          TelescopeNormal = { bg = "#191724" },
          TelescopePrompt = { bg = "#1f1d2e" },
          TelescopeBorder = { fg = "#403d52" },

          -- Float windows
          FloatBorder = { bg = "#191724", fg = "#403d52" },

          -- Sidebars and popups
          Pmenu = { bg = "#1f1d2e" },
          PmenuSel = { bg = "#403d52" },
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
