-- 2024 jmfariasdev (João Marcos Farias)
-- §§=> Neovim <=§§ options config file.

-- [ Leader ]
vim.g.mapleader = ' ' -- Set leader key to space bar.
vim.g.maplocalleader = ' ' -- Same as above but locally.

-- [ Special ]
vim.g.is_nerd_font_active = true -- Enable/Disable some plugins features dynamically.

-- [ Indentation ]
vim.opt.autoindent = true -- Follow previous indentation on new lines.
vim.opt.expandtab = true -- Convert tab into spaces.
vim.opt.shiftround = true -- Ensure consistent indentation when shifting text.
vim.opt.shiftwidth = 2 -- Shift indentation width when using << or >> keymaps.
vim.opt.softtabstop = 2 -- Number of spaces inserted by tab or deleted by backspace.
vim.opt.tabstop = 2 -- How many spaces the tab character is equivalent to (width of indentation).
vim.cmd('set nomodeline') -- Ignore file's mode lines and neovim configurations instead.

-- [ Search ]
vim.opt.incsearch = true -- Highlight search matches incrementally by character.
vim.opt.hlsearch = true -- Highlight search match occurences after pressing Enter.
vim.opt.ignorecase = true -- Set search (/) to be case insensitive.
vim.opt.smartcase = true -- Set search to be case sensitive if capital letters are typed.

-- [ Appearance ]
vim.opt.number = true -- Display lines numbers.
vim.opt.relativenumber = true -- Display lines number relative to the cursor line.
vim.opt.cursorline = false -- Highlight cursors' current line.
vim.opt.matchpairs = '' -- Disable highlighting for (), {}, [], etc.
vim.cmd('let loaded_matchparen = 1') -- More highlighting disabling...
vim.opt.termguicolors = true -- Enable terminal colors.

-- [ Behavior ]
vim.opt.wrap = true -- Enable line wrapping if length is out of viewport bounds.
vim.opt.showmode = false -- Disable vim mode indication e.g. -- INSERT --, etc.
vim.opt.wildmenu = true -- Display commands tab completion options to show as a menu.
vim.opt.linebreak = true -- Prevent linebreak in the middle of words.
vim.opt.breakindent = true -- Preserve Indentation of wrapping lines.
vim.opt.signcolumn = 'yes' -- Always keep the sign column visible.
vim.opt.splitright = true -- Set new horizontal split window to appear on the right.
vim.opt.splitbelow = true -- Set new vertical split window to appear on the bottom.
vim.opt.inccommand = 'split' -- Preview substitutions live, while typing.
vim.opt.scrolloff = 10 -- Number of the minimum shown lines above and below cursor while scrolling.
vim.cmd('set clipboard=') -- Keep system and vim clipboard separated.

-- [ General Preferences ]
vim.opt.mouse = 'a' -- Enable mouse interaction.
vim.cmd.noswapfile = true -- Disable file swap because this is so annoying lol.
vim.opt.spell = false -- Turn spellcheck off.
vim.opt.undofile = true -- Enable undo history file.
vim.opt.updatetime = 250 -- Decrease update time.
vim.opt.timeoutlen = 1000 -- Mapped sequence wait time.

-- [ Highligh when yanking (copying) text. ]
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('jmfariasdev-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
