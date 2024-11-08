vim.g.user_emmet_leader_key = "<C-C>"

return {
  -- emmet
  {
    "mattn/emmet-vim",
  },
  -- rainbow_csv
  {
    "mechatroner/rainbow_csv",
  },

  -- nvim undotree
  {
    "mbbill/undotree",
    cofig = function()
      local undotree = require("undotree")
      undotree.setup()
    end,
  },
}
