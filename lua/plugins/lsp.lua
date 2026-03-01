return {
  "neovim/nvim-lspconfig",
  config = function()

    vim.lsp.config("clangd", {
      cmd = { "clangd", "--background-index" },
      filetypes = {"c", "cpp"},
    })

    vim.lsp.config("gopls", {
      cmd = {"gopls"},
      filetypes = {"go", "gomod"},
      settings = {
        gopls = {
          gofumpt = true,
          staticcheck = true,
        },
      },
    })

    vim.lsp.enable("clangd")
    vim.lsp.enable("gopls")

  end,
}
