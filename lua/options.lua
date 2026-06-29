local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

opt.mouse = 'a'

opt.showmode = false

vim.schedule(function() opt.clipboard = 'unnamedplus' end)

opt.breakindent = true

opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = 'yes'

opt.updatetime = 250

opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
opt.confirm = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- fold options
opt.foldmethod = 'expr'
opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
opt.foldenable = false
opt.foldlevel = 99
