if vim.g.vscode then
  print 'Hello vscode'
  -- VSCode extension
  require 'custom.core'
  require 'custom.plugins.mini'
  require 'custom.plugins.vim-visual-mutli'
else
  -- ordinary Neovim
  require 'custom.core'
  require 'custom.lazy'
end
