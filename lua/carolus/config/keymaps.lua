local keymap = vim.keymap
local api = vim.api
local wk = require("which-key")

-- Insert a blank line below or above current line (do not move the cursor),
-- see https<Cmd>//stackoverflow.com/a/16136133/6064933
keymap.set("n", "<leader>o", "printf('m`%so<ESC>``', v<Cmd>count1)", {
  expr = true,
  desc = "insert line below",
})

keymap.set("n", "<leader>O", "printf('m`%sO<ESC>``', v<Cmd>count1)", {
  expr = true,
  desc = "insert line above",
})

-- Always use very magic mode for searching
-- keymap.set("n", "/", [[/\v]])

-- Use Esc to quit builtin terminal
keymap.set("t", "<Esc>", [[<c-\><c-n>]])

-- clear search highlights
keymap.set("n", "<leader>c", "<Cmd>silent noh<CR>", { desc = "clear highlights", })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')


--windows movement
keymap.set("n", "<Right>", "<C-w>l")
keymap.set("n", "<Left>", "<C-w>h")
keymap.set("n", "<Up>", "<C-w>k")
keymap.set("n", "<Down>", "<C-w>j")

keymap.set("n", "<leader>sx", "<Cmd>close<CR>", {desc = "close current split", }) -- close current split window

wk.register({
	["<leader>"] = {
		t = {
			name = "+tab",
		},
	},
})
keymap.set("n", "<leader>to", "<Cmd>tabnew<CR>", { desc = "Open new tab", }) -- open new tab
keymap.set("n", "<leader>tx", "<Cmd>tabclose<CR>", { desc = "Close tab",}) -- close current tab
keymap.set("n", "<leader>tn", "<Cmd>tabn<CR>", { desc = "Go to next tab", }) --  go to next tab
keymap.set("n", "<leader>tp", "<Cmd>tabp<CR>", { desc = "Go to previous tab", }) --  go to previous tab

-- Navigate buffers
keymap.set("n", "<S-l>", "<Cmd>bnext<CR>", { desc = "Go to next buffer", })
keymap.set("n", "<S-h>", "<Cmd>bprevious<CR>", { desc = "Go to previous buffer", })

keymap.set("i", "jj", "<Esc>")



-- Jump forward or backward
api.nvim_set_keymap('i', '<Tab>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<Tab>"', {expr = true, noremap = true})
api.nvim_set_keymap('s', '<Tab>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<Tab>"', {expr = true, noremap = true})
api.nvim_set_keymap('i', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', {expr = true, noremap = true})
api.nvim_set_keymap('s', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', {expr = true, noremap = true})
