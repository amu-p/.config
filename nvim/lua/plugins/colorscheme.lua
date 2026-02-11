return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- 起動時に読み込む
    priority = 1000, -- 他のプラグインより先に適用
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
