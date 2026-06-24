return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup()
    local ok, err = pcall(function()
      require("nvim-treesitter").install({ "lua", "vim", "vimdoc", "query", "c", "cpp", "rust", "python", "go", "typescript", "javascript" }):wait(60000)
    end)
    if not ok then
      vim.notify("Treesitter install: " .. err, vim.log.levels.WARN)
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "vim", "c", "cpp", "rust", "python", "go", "typescript", "javascript" },
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
