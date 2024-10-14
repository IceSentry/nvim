if vim.g.vscode then
  -- VSCode extension
  print 'Hello from vscode'
  require 'custom.core.keymaps'
else
  -- ordinary Neovim
  print 'hello from neovim'
  require 'custom.core'
  require 'custom.lazy'
end
