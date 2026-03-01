return {
  -- 符号大纲（类/函数列表，阅读源码核心工具）
  {
    "hedyhli/outline.nvim",
    keys = {
      { "<leader>o", "<cmd>Outline<cr>" },
    },
    opts = {},
  },
  -- 函数调用链（谁调用了这个函数）
  {
    "ldelossa/litee-calltree.nvim",
    dependencies = { "ldelossa/litee.nvim" },
    config = function()
      require("litee.lib").setup()
      require("litee.calltree").setup()
    end,
  },
  -- 跳转增强：f/t 多字符跳转
  {
    "folke/flash.nvim",
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end },
    },
  },
  -- 显示当前函数名（大文件滚动时不迷路）
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = { max_lines = 3 },
  },
  -- diagnostics 汇总面板
  {
    "folke/trouble.nvim",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>" },
      { "<leader>xd", "<cmd>Trouble lsp_definitions toggle<cr>" },
    },
    opts = {},
  },
}
