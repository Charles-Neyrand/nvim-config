local keymap = vim.keymap
local api = vim.api
local uv = vim.loop

-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap.set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})

keymap.set("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- Always use very magic mode for searching
keymap.set("n", "/", [[/\v]])

-- Use Esc to quit builtin terminal
keymap.set("t", "<Esc>", [[<c-\><c-n>]])

-- clear search highlights
keymap.set("n", "<leader>c", ":silent noh<CR>", opts)

-- delete single character without copying into register
keymap.set("n", "x", '"_x')


--windows movement
keymap.set("n", "<Right>", "<C-w>l")
keymap.set("n", "<Left>", "<C-w>h")
keymap.set("n", "<Up>", "<C-w>k")
keymap.set("n", "<Down>", "<C-w>j")

keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

keymap.set("i", "ii", "<Esc>")
keymap.set("n", "ii", "<Esc>")
keymap.set("i", "ij", "<Esc>")


