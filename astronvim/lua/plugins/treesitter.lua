---@type LazySpec
return {
  {
    "nvim-tree/nvim-web-devicons",

    config = function()
      require("nvim-web-devicons").setup({
      override_by_extension = {
        ["astro"] = {
          icon = "",
          -- color = "#3620B0",
          color = "#771CBA",
          name = "Astro",
        },
      },
      })
    end,
      
  },
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
