-- 2024 jmfariasdev (João Marcos Farias)
-- §§=> Neovim <=§§ main config file.

-----------------------------------------------------------------------------------------------

-- [ Active Profile ]

require('jmfariasdev')

-- NOTE: This is the current and my personal configuration profile loaded.
-- It is a folder located at the lua folder containing configs like
-- general use case keymaps and vim options specific to this profile.
-- By taking this structure approach I can isolate configurations in case
-- I need a different one, then I can just load that here and switch to it easily.
-- Plugins can also be configured by profile and loaded to lazy (Plugin Manager)
-- here at the bottom of this file by referencing the profile and the plugins 
-- config file e.g. 'jmfariasdev/plugins' allowing for independent sets of plugins
-- and plugins configurations. See https://github.com/folke/lazy.nvim for more information.

-----------------------------------------------------------------------------------------------

-- [ Lazy Plugin Manager Install ]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-----------------------------------------------------------------------------------------------

-- [ Active Plugins Setup ]

require("lazy").setup("jmfariasdev/plugins")

-----------------------------------------------------------------------------------------------
