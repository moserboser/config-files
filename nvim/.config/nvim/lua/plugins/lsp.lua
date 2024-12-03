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
    },
  },

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "sh",
    callback = function()
      vim.lsp.start({
        name = "bash-language-server",
        cmd = { "bash-language-server", "start" },
      })
    end,
  }),
}
