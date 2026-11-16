return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 500, -- ms
    preset = "helix",
    icons = { mappings = false },
    keys = {
      scroll_down = "<M-j>", -- Alt-j
      scroll_up = "<M-k>", -- Alt-k
    },
  },
  keys = {
    { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Show Buffer Local Keymaps" },
  },
}
