return {
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup()
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
    ensure_installed = { "python" },
    },
  },
}
