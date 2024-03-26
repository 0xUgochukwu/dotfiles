return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      max_width = 50,
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
    -- config = function()
    --   require("copilot").setup {
    --     suggestion = { enabled = false },
    --     panel = { enabled = false },
    --   }
    -- end,
  },
}
