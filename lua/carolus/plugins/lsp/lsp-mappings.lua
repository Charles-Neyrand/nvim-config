---@diagnostic disable-next-line: undefined-global
local keymap = vim.keymap
local m = ""

keymap.set("n", "li", ":LspInfo<CR>")
keymap.set("n", "lK", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
keymap.set("n", "lk", "<cmd>Lspsaga hover_doc<CR>")
keymap.set("n", "lz", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
keymap.set("n", "lZ", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
keymap.set("n", "l;", '<cmd>lua require("notify")(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')

keymap.set("n", "lt", '<cmd>Lspsaga peek_type_definition<CR>')
keymap.set("n", "ld", '<cmd>Lspsaga peek_definition<CR>')
keymap.set("n", "lD", '<cmd>Lspsaga goto_definition<CR>')
keymap.set("n", "lr", '<cmd>Lspsaga finder<CR>')
keymap.set("n", "lR", '<cmd>Lspsaga rename<CR>')
keymap.set("n", "la", '<cmd>Lspsaga code_action<CR>')
keymap.set("n", "le", '<cmd>Lspsaga show_workspace_diagnostics<CR>')
keymap.set("n", "ln", '<cmd>Lspsaga diagnostic_jump_next<CR>')
keymap.set("n", "lN", '<cmd>Lspsaga diagnostic_jump_prev<CR>')

-- terminal
keymap.set('n', '<A-d>', '<cmd>Lspsaga term_toggle<CR>')
keymap.set('t', '<A-d>', '<cmd>Lspsaga term_toggle<CR>')

--outline
keymap.set('n', 'lo', '<cmd>Lspsaga outline<CR>')
