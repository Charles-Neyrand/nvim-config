--@diagnostic disable-next-line: undefined-global
local keymap = vim.keymap

keymap.set("n", "éi", "<cmd>LspInfo<CR>", { desc = "Information on lsp server", })
keymap.set("n", "éK", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "Signature help", })
keymap.set("n", "ék", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover document", })
keymap.set("n", "éz", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", { desc = "Add workspace folder", })
keymap.set("n", "éZ", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", { desc = "Remove workspace folder", })
keymap.set("n", "é;", '<cmd>lua require("notify")(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', { desc = "List workspace folder", })

keymap.set("n", "ét", '<cmd>Lspsaga peek_type_definition<CR>', { desc = "Peek type definition", })
keymap.set("n", "éd", '<cmd>Lspsaga peek_definition<CR>', { desc = "Peek definition", })
keymap.set("n", "éD", '<cmd>Lspsaga goto_definition<CR>', { desc = "Go to definition", })
keymap.set("n", "ér", '<cmd>Lspsaga finder<CR>', { desc = "Finder", })
keymap.set("n", "éR", '<cmd>Lspsaga rename<CR>', { desc = "Rename", })
keymap.set("n", "éa", '<cmd>Lspsaga code_action<CR>', { desc = "Code action", })
keymap.set("n", "ée", '<cmd>Lspsaga show_workspace_diagnostics<CR>', { desc = "Show diagnostic", })
keymap.set("n", "én", '<cmd>Lspsaga diagnostic_jump_next<CR>', { desc = "Jump to next diagnostic", })
keymap.set("n", "éN", '<cmd>Lspsaga diagnostic_jump_prev<CR>', { desc = "Jump to previous diagnostic", })

-- terminal
keymap.set('n', '<A-d>', '<cmd>Lspsaga term_toggle<CR>', { desc = "Toggle term", })
keymap.set('t', '<A-d>', '<cmd>Lspsaga term_toggle<CR>', { desc = "Toggle term", })

--outline
keymap.set('n', 'éo', '<cmd>Lspsaga outline<CR>', { desc = "Outline", })
