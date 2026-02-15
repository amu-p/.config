return {
  -- Configure LazyVim to load gruvbox
  {
    "folke/snacks.nvim",
    keys = {
      -- Snacks.picker.grep({ glob = "*.c" }),
      {
        "<leader>/", function()
          Snacks.picker.grep({ glob = {"*.[ch]", "*.lua", "*.md"} })
        end, desc = "Grep",
      },
    },
  },
}
