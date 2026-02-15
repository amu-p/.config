return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ['*'] = {
          keys = {
            -- Only set this keymap for servers that support code actions
            { "<c-k>", "<Up>", mode = "i", desc = "Move Up" },
            { "<c-q>", function() return vim.lsp.buf.signature_help() end, mode = "i", desc = "Signature Help", has = "signatureHelp" },
          },
        },
      },
    },
  }
}
