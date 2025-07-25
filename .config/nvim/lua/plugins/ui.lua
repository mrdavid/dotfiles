return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "doom", -- config
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
