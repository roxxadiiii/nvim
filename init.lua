--    ┬┌┐┌┬┌┬┐┬  ┬ ┬┌─┐
--    │││││ │ │  │ │├─┤
--    ┴┘└┘┴ ┴o┴─┘└─┘┴ ┴


vim.g.maplocalleader = " "
require("config")
vim.cmd([[
  colorscheme gruvbox
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
]])
local pywal = require('pywal')

-- pywal.setup()


-- require('mini.pick').setup()
