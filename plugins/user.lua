return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  init = {
    ["Darazaki/indent-o-matic"] = { disable = true },
  },

  {
    "wakatime/vim-wakatime",
    lazy = false,
    config = function()

      -- previous configuration
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
    autoStart = true,
    config = function()

      -- previous configuration
    end,
  },
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
