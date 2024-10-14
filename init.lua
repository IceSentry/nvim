if vim.g.vscode then
  -- VSCode extension
  require 'custom.core.keymaps'
else
  -- ordinary Neovim
  require 'custom.core'
  require 'custom.lazy'
end
