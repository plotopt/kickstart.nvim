-- DB utilities
return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function() vim.g.db_ui_use_nerd_fonts = 1 end,
  },
  {
    'saghen/blink.cmp',
    opts = {
      sources = {
        per_filetype = {
          sql = { 'snippets', 'dadbod', 'buffer' },
        },
        providers = {
          dadbod = { name = 'DB', module = 'vim_dadbod_completion.blink' },
        },
      },
    },
  },
}
