return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local Job = require("plenary.job")

    -- Cache location
    local cache_file = vim.fn.stdpath("cache") .. "/alpha_quote.json"
    local cache_ttl = 60 * 60 -- 60 minutes in seconds

    -- read cache
    local function read_cache()
      local f = io.open(cache_file, "r")
      if not f then return nil end
      local data = f:read("*a")
      f:close()
      local ok, decoded = pcall(vim.json.decode, data)
      if ok and decoded.quote and decoded.time then
        if os.time() - decoded.time < cache_ttl then
          return decoded.quote
        end
      end
      return nil
    end

    -- write cache
    local function write_cache(quote)
      local f = io.open(cache_file, "w")
      if not f then return end
      f:write(vim.json.encode({ quote = quote, time = os.time() }))
      f:close()
    end

    -- fetch from API
    local function fetch_quote(callback)
      Job:new({
        command = "curl",
        args = { "-s", "https://programming-quotesapi.vercel.app/api/random" },
        on_exit = function(j, return_val)
          if return_val == 0 then
            local output = table.concat(j:result(), "\n")
            local ok, decoded = pcall(vim.json.decode, output)
            if ok and decoded.en then
              local q = decoded.en .. " — " .. (decoded.author or "")
              write_cache(q)
              vim.schedule(function() callback(q) end)
              return
            end
          end
          vim.schedule(function()
            callback("“It works on my machine.”")
          end)
        end,
      }):start()
    end

    -- main function to get quote (cache or API)
    local function get_quote(callback)
      local cached = read_cache()
      if cached then
        callback(cached)
      else
        fetch_quote(callback)
      end
    end

    -- placeholder (shown immediately)
    dashboard.section.header.val = {
      "==============================",
      "     Welcome to Neovim 🚀     ",
      "==============================",
      "",
      "Fetching a fresh dev quote...",
      "",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "󰄉  Recently used files", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "󰅚  Quit Neovim", ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    -- update with actual quote (async)
    get_quote(function(quote)
      dashboard.section.header.val = {
        "==============================",
        "     Welcome to Neovim 🚀     ",
        "==============================",
        "",
        quote,
        "",
      }
      pcall(vim.cmd.AlphaRedraw)
    end)
  end,
}

