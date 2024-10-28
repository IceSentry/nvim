return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
  config = function()
    local detail = false
    require('oil').setup {
      columns = {
        'icon',
        -- 'size',
        -- 'mtime'
      },
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ['<C-s>'] = false,
        ['gd'] = {
          desc = 'Toggle file detail view',
          callback = function()
            detail = not detail
            if detail then
              require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
            else
              require('oil').set_columns { 'icon' }
            end
          end,
        },
      },
    }
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
}
