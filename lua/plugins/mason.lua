return {
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "pyright", "ts_ls", "clangd" },
    },
  },
  "WhoIsSethDaniel/mason-tool-installer.nvim",
}
