return {
  -- 状态栏
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = { theme = "auto" },
  },
  -- 文件树
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>" },
    },
    opts = {
      filters = { dotfiles = false },
      -- 当最后一个普通buffer 关闭时， 如果nvim-tree还开着，自动退出 nvim 
      actions = {
          open_file = {
              quit_on_open = false,
          },
      },
    },

    config = function(_, opts)
      require("nvim-tree").setup(opts)
      -- 当最后一个文件 buffer 关闭时，回到 nvim-tree
      vim.api.nvim_create_autocmd("BufEnter", {
        nested = true,
        callback = function()
          if #vim.api.nvim_list_wins() == 1
            and vim.bo.filetype == "NvimTree" then
            vim.cmd("quit")
          end
        end,
  })
end,
  },
  -- buffer 标签栏
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  -- 缩进线（大型项目阅读必备）
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  -- 颜色主题
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight-night")
    end,
  },
}
