return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.tabline = opts.sections
    opts.sections = {}
    opts.inactive_sections = {}
  end,
}
