-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Function to open a file with line and column from the terminal output
function open_file_in_last_pane()
  -- Get the current line
  local line = vim.fn.getline '.'

  -- Iterate over each word in the line
  for word in line:gmatch '%S+' do
    -- Check if the word matches the pattern "filename:line:column"
    local filename, lnum, col = word:match '([^:]+):(%d+):(%d+)'

    if filename and lnum and col then
      vim.cmd 'wincmd p' -- open last active window
      vim.cmd('edit ' .. filename)
      vim.fn.cursor(tonumber(lnum), tonumber(col))
      return
    end
  end

  print 'No valid file link found in the current line.'
end

vim.api.nvim_set_keymap('n', '<leader>gf', ':lua open_file_in_last_pane()<CR>', { noremap = true, silent = true })

return {}
