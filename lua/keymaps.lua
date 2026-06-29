local set = vim.keymap.set

set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })

set('n', '<M-j>', function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! ]c]]
  else
    vim.cmd [[m .+1<CR>==]]
  end
end, { desc = 'Move line down' })

set('n', '<M-k>', function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! [c]]
  else
    vim.cmd [[m .-2<CR>==]]
  end
end, { desc = 'Move line up' })

-- Instant execution
set('n', '<space><space>x', '<cmd>source %<CR>', { desc = 'Source file' })
set('n', '<space>x', ':.lua<CR>', { desc = 'Execute line' })
set('v', '<space>x', ':lua<CR>', { desc = 'Execute selection' })

-- -- DB access
-- set('n', '<leader>db', function ()
--   vim.cmd('split | terminal psql

-- Execute file
local runners = {
  go = 'go run %',
}

set('n', '<leader>rr', function()
  local ft = vim.bo.filetype
  local cmd = runners[ft]
  if cmd then
    vim.cmd('w | !' .. cmd)
  else
    vim.notify('No runner for filetype: ' .. ft, vim.log.levels.WARN)
  end
end, { desc = 'Run current file' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- cmd + things
vim.keymap.set({ 'i', 'n' }, '<D-s>', ':w<CR>', { desc = 'Save current buffer' })

-- Navigate through buffers
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
