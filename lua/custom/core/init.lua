-- TODO move this
-- Function to open a file with line and column from the terminal output
function OPEN_FILE_IN_LAST_PANE()
  -- Get the current line
  local line = vim.fn.getline '.'

  -- Iterate over each word in the line
  for word in line:gmatch '%S+' do
    -- Check if the word matches the pattern "filename:line:column"
    local filename, lnum, col = word:match '([^:]+):(%d+):(%d+)'

    if filename and lnum and col then
      -- go to left pane
      -- this assumes that the terminal is on the right
      vim.cmd 'wincmd h'
      vim.cmd('edit ' .. filename)
      vim.fn.cursor(tonumber(lnum), tonumber(col))
      return
    end
  end

  print 'No valid file link found in the current line.'
end

vim.api.nvim_set_keymap('n', '<leader>gf', ':lua OPEN_FILE_IN_LAST_PANE()<CR>', { noremap = true, silent = true })

require 'custom.core.options'
require 'custom.core.keymaps'
require 'custom.core.autocommands'
