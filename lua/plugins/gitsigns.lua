return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      current_line_blame = true,
    })
    -- vim.cmd("highlight GitSignsAdd guibg=NONE")
    -- vim.cmd("highlight GitSignsChange guibg=NONE")
    -- vim.cmd("highlight GitSignsDelete guibg=NONE")
  end,
}
