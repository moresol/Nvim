-- Appearance
vim.opt.termguicolors = true
vim.opt.pumheight = 10 -- Max items to show in pop up menu
vim.opt.cmdheight = 1 -- Max items to show in command menu
vim.opt.conceallevel = 0 -- For markdown like elements

-- Files and Others
vim.opt.fileencoding = "utf-8" -- File Encoding
vim.g.loaded_netrw = 1 -- Helps opening links in the internet (probabilly -_-)
vim.g.loaded_netrwPlugin = 1
vim.opt.autochdir = true
vim.cmd("filetype plugin indent on")
vim.opt.shortmess = vim.o.shortmess .. "c"
vim.opt.hidden = true
vim.opt.whichwrap = "b,s,<,>,[,],h,l"
vim.opt.iskeyword:append("-,_")
vim.opt.virtualedit = "block"

-- Split Windows
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Update and backups
vim.opt.showmode = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 250
vim.opt.timeoutlen = 100

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- Backspace key
vim.opt.backspace = "indent,eol,start"

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Mouse and Scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 5
vim.opt.mouse = "a"

-- Wrapping
vim.wo.wrap = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.wo.signcolumn = "yes"

-- Tabs and indentations
vim.opt.tabstop = 2
vim.bo.tabstop = 2
vim.opt.showtabline = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.opt.smartindent = true
vim.bo.smartindent = true
vim.opt.autoindent = true
vim.bo.autoindent = true
vim.opt.expandtab = true
vim.bo.expandtab = true

vim.opt.list = true
-- vim.opt.listchars:append("eol:󱞣")
vim.opt.fillchars = { eob = " " }

-- keep cursor unchanged after quiting
vim.api.nvim_create_autocmd("ExitPre", {
  group = vim.api.nvim_create_augroup("Exit", { clear = true }),
  command = "set guicursor=a:ver90",
  desc = "Set cursor back to beam when leaving Neovim.",
})

-- Options based on filetypes
-- markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt.wrap = true
    vim.opt.linebreak = true
  end,
})

vim.opt.nu = true
vim.opt.isfname:append("@-@")
vim.opt.undodir = os.getenv("HOME") .. "/.vim.undodir"
vim.opt.colorcolumn = "80"
vim.opt.swapfile = false
vim.opt.undofile = true
