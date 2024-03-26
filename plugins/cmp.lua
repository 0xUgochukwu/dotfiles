return {
  {
    "zbirenbaum/copilot-cmp",
    config = function() require("copilot_cmp").setup() end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "zbirenbaum/copilot-cmp",
    },

    opts = function(_, opts)
      local cmp = require "cmp"

      opts.sources = cmp.config.sources {
        { name = "copilot", priority = 1250 },
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }

      -- return the new table to be used
      return opts
    end,
  },
}
