return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        always_show_tabline = false,
      },
      tabline = {
        lualine_a = { { 'tabs', mode = 2, max_length = vim.o.columns } },
      },
    })
  end
}
