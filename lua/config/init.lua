--    ┬  ┬ ┬┌─┐   ┌─┐┌─┐┌┐┌┌─┐┬┌─┐   ┬┌┐┌┬┌┬┐┬  ┬ ┬┌─┐
--    │  │ │├─┤───│  │ ││││├┤ ││ ┬───│││││ │ │  │ │├─┤
--    ┴─┘└─┘┴ ┴   └─┘└─┘┘└┘└  ┴└─┘   ┴┘└┘┴ ┴o┴─┘└─┘┴ ┴

local M = {}

function M.setup()
  -- Load configuration modules in order
  require("config.options")   -- General Neovim options
  require("config.lazy")      -- Package manager
  require("config.keymaps")   -- Key mappings (load after plugins)
end

M.setup()

return M
