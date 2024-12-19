return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- servers will be automatically installed with mason and loaded with lspconfig
      pyright = {},
      clangd = {},
      marksman = {},
      bashls = {},
    },
  },
}
