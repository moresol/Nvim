-- Bootstrap LazyVim and your plugins
require("config.lazy")

-- Specify the path for LazyVim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Install LazyVim if not already installed
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- Add LazyVim to the runtime path
vim.opt.rtp:prepend(lazypath)

--Warning Could not load Python 3
-- You may disable this provider (and warning) by adding to your init.vim
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0

-- -- Translucent background highlights
vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "WhichKeyTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })

vim.cmd("highlight Cursor guibg=#ccc, guifg=#000")
vim.cmd("highlight CursorLine  guibg=none")
vim.cmd("highlight LineNr guifg=#616a6b")

-- add translucency to pop-up windows for cmp
vim.opt.pumblend = 0

-- Blinking cursor all modes
vim.o.guicursor = table.concat({
  "n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
  "i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
  "r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")

-- Telescope coloring
vim.cmd("highlight TelescopeNormal guibg=#1e2124")
vim.cmd("highlight TelescopeTitle guibg=#bc0000")
vim.cmd("highlight TelescopePreviewTitle guibg=#008900")
vim.cmd("highlight TelescopeResultsTitle guibg=#1e2124")
vim.cmd("highlight TelescopeSelection guibg=#212d36")
vim.cmd("highlight TelescopeSelectionCaret guibg=#212d36")
vim.cmd("highlight TelescopePromptNormal guibg=#1e2124")
vim.cmd("highlight TelescopeBorder guibg=#1e2124")
vim.cmd("highlight TelescopePreviewBorder guibg=#1e2124")
vim.cmd("highlight TelescopePromptBorder guibg=#1e2124")
