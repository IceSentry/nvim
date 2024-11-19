return {
  -- 'Mofiqul/vscode.nvim',
  -- 'craftzdog/solarized-osaka.nvim',
  -- 'lunarvim/darkplus.nvim',
  -- 'AlexvZyl/nordic.nvim',
  -- 'oahlen/iceberg.nvim',
  'gbprod/nord.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    vim.cmd.colorscheme 'nord'

    vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.mutable.rust', { underline = true })
  end,
  opts = {
    styles = {
      comments = {
        italic = false,
      },
    },
    on_highlights = function(highlights, colors)
      highlights['@constant'] = { fg = colors.aurora.purple }
      highlights['@module'] = { link = '@type' }
      highlights['@function'] = { fg = colors.aurora.green }
      highlights['@function.call'] = { link = '@function' }
      highlights['@function.method'] = { link = '@function' }
      highlights['@function.builtin'] = { link = '@function' }
      highlights['@lsp.type.struct.rust'] = { link = '@type' }
      highlights['@string'] = { fg = colors.aurora.yellow }
      -- highlights['DiagnosticUnderlineError'] = { underline = colors.aurora.red }
    end,
  },
}
