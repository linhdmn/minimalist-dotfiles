-- -- return { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
-- --
-- return {
--     "lukas-reineke/indent-blankline.nvim",
--     dependencies = { "HiPhish/rainbow-delimiters.nvim" },
--     event = { "BufReadPost", "BufNewFile" },
--     main = "ibl",
--     opts = {
--       indent = { highlight = indent_highlight },
--       -- scope = {
--       --   highlight = indent_highlight,
--       -- },
--     },
--  }
--
-- return {
--     "lukas-reineke/indent-blankline.nvim",
--     dependencies = { "HiPhish/rainbow-delimiters.nvim" },
--     event = { "BufReadPost", "BufNewFile" },
--     main = "ibl",
--     opts = {
--         indent = {
--             char = "│", -- Choose a visible character, like │, ┆, or ┊
--             highlight = { "RainbowDelimiterRed", "RainbowDelimiterYellow", "RainbowDelimiterBlue" },
--         },
--         scope = {
--             enabled = true,
--             highlight = { "IndentBlanklineScope" },
--         },
--     },
--     config = function()
--         -- Define custom highlight groups for better visibility
--         vim.cmd([[
--         highlight IndentBlanklineChar guifg=#3B4252 gui=nocombine
--         highlight IndentBlanklineScope guifg=#EBCB8B gui=nocombine
--
--         " Define Rainbow Colors
--         highlight RainbowDelimiterRed guifg=#E06C75 gui=nocombine
--         highlight RainbowDelimiterYellow guifg=#E5C07B gui=nocombine
--         highlight RainbowDelimiterBlue guifg=#61AFEF gui=nocombine
--         ]])
--     end,
-- }
--
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
