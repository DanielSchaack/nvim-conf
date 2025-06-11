return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.spec, {
      { "<leader>h", group = "harpoon" },
      { "<leader>p", group = "project" },
    })
  end,
}
