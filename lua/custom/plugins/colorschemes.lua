return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000, init = function() vim.cmd.colorscheme 'catppuccin' end },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    priority = 1000,
    opts = {
      flavour = 'wave',
    },
    init = function() vim.cmd.colorscheme 'kanagawa' end,
  },
}
