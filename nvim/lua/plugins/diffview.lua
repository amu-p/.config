return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    keys = {
      { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History (current file)" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "File History (repo)" },
    },
  },
}
