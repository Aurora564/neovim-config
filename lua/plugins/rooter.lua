return {
  "airblade/vim-rooter",  -- 插件名称
  lazy = false,  -- 插件在启动时加载
  config = function()
    -- 插件的配置部分
    -- vim-rooter 默认启用，会自动根据文件路径设置当前工作目录
    -- 你不需要手动配置，插件会自动生效
  end,
}
