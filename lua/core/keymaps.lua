local keymap = vim.keymap

-- LSP 通用
keymap.set("n", "gd", vim.lsp.buf.definition)
keymap.set("n", "gr", vim.lsp.buf.references)
keymap.set("n", "K", vim.lsp.buf.hover)
keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

-- 剪贴板
keymap.set("v", "<leader>y", '"+y')


-- 原有内容保留，追加以下内容

-- 诊断跳转
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- 调用链
keymap.set("n", "<leader>ci", vim.lsp.buf.incoming_calls)
keymap.set("n", "<leader>co", vim.lsp.buf.outgoing_calls)

-- buffer 切换
keymap.set("n", "<Tab>",   "<cmd>bnext<cr>")
keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>")
keymap.set("n", "<leader>q", "<cmd>bdelete<cr>")
