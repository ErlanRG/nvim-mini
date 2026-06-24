return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {
    signs = {
      add = { text = "│" },
      change = { text = "│" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 500,
    },
  },
  keys = {
    { "<leader>hs", function() require("gitsigns").stage_hunk() end, desc = "[H]unk [S]tage" },
    { "<leader>hr", function() require("gitsigns").reset_hunk() end, desc = "[H]unk [R]eset" },
    { "<leader>hu", function() require("gitsigns").undo_stage_hunk() end, desc = "[H]unk [U]ndo Stage" },
    { "<leader>hp", function() require("gitsigns").preview_hunk() end, desc = "[H]unk [P]review" },
    { "<leader>hh", function() require("gitsigns").toggle_line_blame() end, desc = "[H]unk Toggle Blame" },
    { "<leader>hd", function() require("gitsigns").diffthis() end, desc = "[H]unk [D]iff" },
    { "<leader>hb", function() require("gitsigns").blame_line() end, desc = "[H]unk [B]lame" },
    { "<leader>hB", function() require("gitsigns").blame_line({ full = true }) end, desc = "[H]unk Full [B]lame" },
    { "]h", function() require("gitsigns").next_hunk() end, desc = "Next Hunk" },
    { "[h", function() require("gitsigns").prev_hunk() end, desc = "Prev Hunk" },
  },
}
