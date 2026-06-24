return {
  "nvim-mini/mini.nvim",
  version = false,
  event = "VeryLazy",
  config = function()
    require("mini.pairs").setup()
    require("mini.surround").setup()
    require("mini.comment").setup()
    require("mini.statusline").setup()
    require("mini.icons").setup()
    require("mini.ai").setup()
  end,
}
