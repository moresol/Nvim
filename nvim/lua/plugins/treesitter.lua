return {
  "nvim-treesitter/nvim-treesitter",

  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    "windwp/nvim-ts-autotag",
    "hiphish/rainbow-delimiters.nvim",
    "windwp/nvim-autopairs",
  },

  build = ":TSUpdate",
  event = "bufWinEnter",

  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      ensure_installed = {
        "lua",
        "tsx",
        "yaml",
        "vim",
        "vimdoc",
        "html",
        "css",
        "json",
        "javascript",
        "typescript",
        "markdown",
        "markdown_inline",
        "http",
        "svelte",
        "bash",
        "gitignore",
        "query",
        "cpp",
        "scss",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      autotag = {
        enable = true,
      },
      autopairs = {
        enable = true,
      },
      rainbow = {
        enable = true,
        extended_mode = true,
        -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
      },
    })
  end,
}
