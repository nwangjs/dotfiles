return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = { 
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 2 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
        { section = "startup" },
      },
    },
    explorer = {},
    indent = {
      animate = { enabled = false },
    },
    picker = {},
  },
  keys = {
    -- Explorer
    { "<leader>e", function() Snacks.explorer() end, desc = "Explorer" },
    -- Picker
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Picker" },
  },
}
