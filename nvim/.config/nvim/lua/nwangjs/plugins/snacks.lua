return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "S", desc = "Select Session", action = function() require("persistence").select() end },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        }
      },
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
      indent = { char = "▏" },
      scope = { char = "▏" },
    },
    picker = {
      sources = {
        explorer = {
          actions = {
            background_tab = {
              action = function(picker)
                local win = picker.list.win.win
                local lazyredraw = vim.o.lazyredraw
                vim.o.lazyredraw = true
                local ok, err = pcall(function()
                  require("snacks.picker.actions").jump(picker, nil, { cmd = "tab" })
                end)
                if vim.api.nvim_win_is_valid(win) then
                  vim.api.nvim_set_current_win(win)
                end
                vim.o.lazyredraw = lazyredraw
                if not ok then
                  error(err)
                end
              end,
            },
          },
          layout = {
            preview = true,
          },
          win = {
            list = {
              keys = {
                ["gt"] = { "tab", desc = "Open in new tab" },
                ["gT"] = { "background_tab", desc = "Open in background tab" },
              },
            },
          },
        },
      },
    },
  },
  keys = {
    -- Explorer
    { "<leader>e", function() Snacks.explorer() end, desc = "Explorer" },
    -- Picker
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Picker" },
  },
}
