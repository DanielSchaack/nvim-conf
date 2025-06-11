return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>" }
    keys[#keys + 1] = { "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>" }
    keys[#keys + 1] = { "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>" }
  end,
}
