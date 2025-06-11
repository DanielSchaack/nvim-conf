return {
  "snacks.nvim",
  opts = {
    dashboard = {
      enabled = true,
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          layout = { layout = { position = "right" } },
        },
      },
    },
    scroll = {
      enabled = false,
    },
    words = {
      debounce = 20,
    },
  },
  keys = {
    { "<leader>/", false },
    { "<leader>sw", mode = { "n", "v" }, false },
    { "<leader>sW", mode = { "n", "v" }, false },
  },
}
