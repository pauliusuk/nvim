return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<S-Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab"},
    -- { "<C-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab"},
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        separator_style = "|", "|", --other options include slant, slope, padded_slope
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    })
    vim.g.transparent_groups = vim.list_extend(
      vim.g.transparent_groups or {},
      vim.tbl_map(function(v)
        return v.hl_group
        end, vim.tbl_values(require("bufferline.config").highlights))
    )
  end,
}
