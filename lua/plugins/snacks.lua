return {
  "snacks.nvim",
  opts = {
    dashboard = {
      enabled = true,
    },
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = "right" } },
        },
      },
    },
  },
  keys = {
    { "<leader>/", false },
    { "<leader>sw", mode = { "n", "v" }, false },
    { "<leader>sW", mode = { "n", "v" }, false },
  },
}
