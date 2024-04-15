-- 2024 jmfariasdev (João Marcos Farias)
-- §§=> Neovim <=§§ keymaps file.

-- NOTE: Only general use case keymaps are configured in this file,
-- plugins keymaps are configured at "nvim/lua/jmfariasdev/plugins.lua".

-- [ Diagnostics ]
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- [ Disabled ]
vim.keymap.set({ 'n', 'i' }, '<left>', '<cmd>echo "Don\'t be foolish"<CR>')
vim.keymap.set({ 'n', 'i' }, '<right>', '<cmd>echo "Don\'t be foolish"<CR>')
vim.keymap.set({ 'n', 'i' }, '<up>', '<cmd>echo "Don\'t be foolish"<CR>')
vim.keymap.set({ 'n', 'i' }, '<down>', '<cmd>echo "Don\'t be foolish"<CR>')

-- [ Use <Crtl> + <h | j | k | l> to navigate between split Windows ]
vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [ Use <Crtl> + <h | j | k | l> to move the cursor in insert mode ]
vim.keymap.set('i', '<A-h>', '<Left>', { noremap = true })
vim.keymap.set('i', '<A-l>', '<Right>', { noremap = true })
vim.keymap.set('i', '<A-j>', '<Down>', { noremap = true })
vim.keymap.set('i', '<A-k>', '<Up>', { noremap = true })

-- [ Buffer Actions ]
vim.keymap.set('n', '<leader>fs', '<cmd>w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>fa', '<cmd>wa<CR>', { desc = 'Save All' })
vim.keymap.set('n', '<leader>fq', '<cmd>wq<CR>', { desc = 'Save & Quit' })
vim.keymap.set('n', '<leader>fc', '<cmd>bd<CR>', { desc = 'Save & Close' })

-- [ Netrw ]
vim.keymap.set('n', '<leader>pv', '<cmd>Ex<CR>', { desc = 'Save & Close' })

-- [ Easier Life ]
vim.keymap.set({'i', 'n'}, '<c-c>', '<esc>', { desc = 'easier esc' })
vim.keymap.set({'n', 'i'}, '<C-s>', '<End>', {  desc = 'Jump to the end of the line' })
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', { desc = 'Move line down' })
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', { desc = 'Move line up' })
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Preserve cursor while appending lines' })
vim.keymap.set('i', '<C-m', '<Esc>o', { desc = 'Create new lines more easily' })
vim.keymap.set('n', '<leader>h', '<cmd>noh<CR>', { desc = 'Turn references highlight off' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Preserve cursor centralized while half page jumping' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Preserve cursor centralized while half page jumping' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Preserve cursor centralized while hopping through references' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Preserve cursor centralized while hopping through references' })
vim.keymap.set({'n', 'v'}, '<leader>y', "\"+y", { desc = 'Copy to system clipboard' })
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Make file executable' })
vim.keymap.set('n', '<leader>z', '<cmd>!chmod -x %<CR>', { silent = true, desc = 'Make file not executable' })
vim.keymap.set('i', '<C-x>', '<Esc>f\'a', { desc = 'Jump out of single quotes' })
vim.keymap.set('i', '<C-f>', '<Esc>f\"a', { desc = 'Jump out of double quotes' })
vim.keymap.set('n', '<A-c>', ':%s/', { desc = 'Entire file search and replace' })
vim.keymap.set('n', '<A-x>', ':s/', { desc = 'Line search and replace' })
vim.keymap.set('v', '<C-h>', '<gv', { desc = 'Indent text to left' })
vim.keymap.set('v', '<C-l>', '>gv', { desc = 'Indent text to right' })
vim.keymap.set('n', '<leader>nq', ':%s/"/\'/g<CR>', { desc = 'replace double to single quotes' })
vim.keymap.set('n', '<leader>nc', ':%s/;//g<CR>', { desc = 'remove semicolons' })

-- [ Plugin Exceptions ]
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>do', '<Plug>(doge-generate)')
