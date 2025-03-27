return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- Force the correct background color first
      vim.api.nvim_set_hl(0, "Normal", { bg = "#191724" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#191724" })

      require("rose-pine").setup({
        variant = "main",
        dark_variant = "main",
        disable_float_background = false,
        disable_background = false,
        styles = {
          italic = false,
        },
        -- Override specific colors in the theme
        extend_base_groups = {
          background = "#191724",
          background_nc = "#191724",
          panel = "#191724",
          panel_nc = "#191724",
          border = "#403d52",
        },
        highlight_groups = {
          Normal = { bg = "#191724" },
          NormalNC = { bg = "#191724" },
          NormalFloat = { bg = "#191724" },
          FloatBorder = { bg = "#191724", fg = "#403d52" },
          StatusLine = { bg = "#191724" },
          StatusLineNC = { bg = "#191724" },
          SignColumn = { bg = "#191724" },
          LineNr = { bg = "#191724" },
          CursorLine = { bg = "#26233a" },
          Visual = { bg = "#403d52" },
        },
        before_highlight = function(group, highlight, palette)
          -- Override the background universally
          if highlight.background then
            highlight.background = "#191724"
          end
          return highlight
        end,
      })

      -- Set colorscheme after configuration
      vim.cmd("colorscheme rose-pine")

      -- Apply backgrounds again after colorscheme is loaded
      vim.defer_fn(function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "#191724" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#191724" })
      end, 100)
    end,
  },
}
