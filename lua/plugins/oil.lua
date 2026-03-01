-- lua/plugins/oil.lua
return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  opts = {
    default_file_explorer = true,   -- 替代 netrw，nvim . 直接用 oil
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["-"]  = "actions.parent",    -- 返回上级目录
      ["<CR>"] = "actions.select",  -- 进入文件/目录
    },
  },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  },
}
