if vim.g.vscode then
  print 'Hello vscode'
  -- VSCode extension
  require 'custom.core.keymaps'
else
  -- ordinary Neovim
  require 'custom.core'
  require 'custom.lazy'
end
