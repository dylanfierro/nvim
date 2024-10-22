return {
  {
    "alexghergh/nvim-tmux-navigation",
    opts = {},
  },
  {
    "prichrd/netrw.nvim",
    opts = {
      -- Put your configuration here, or leave the object empty to take the default
      -- configuration.
      icons = {
        symlink = "", -- Symlink icon (directory and file)
        directory = "", -- Directory icon
        file = "", -- File icon
      },
      use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
      mappings = {}, -- Custom key mappings
    },
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = { options = { "buffers", "curdir", "tabpages", "winsize" } },
  -- stylua: ignore
  keys = {
    { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
  },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      fast_wrap = {
        map = "<c-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = [=[[%'%"%)%>%]%)%}%,]]=],
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "Comment",
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
  },
  {
    "TroubleC0re/core.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    opts = {},
  },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*", -- Use the latest tagged version
    opts = {}, -- This causes the plugin setup function to be called
    keys = {
      { "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i" } },
      { "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>" },
      { "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "i" } },
      { "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>" },
      { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" } },
      { "<Leader>a", "<Cmd>MultipleCursorsAddBySearch<CR>", mode = { "n", "x" } },
      { "<Leader>A", "<Cmd>MultipleCursorsAddBySearchV<CR>", mode = { "n", "x" } },
    },
  },
  {
    "sam4llis/nvim-lua-gf",
  },
}
