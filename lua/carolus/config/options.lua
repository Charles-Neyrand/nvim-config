local fn = vim.fn
local api = vim.api

-- Leader Key
vim.g.mapleader = ' '

-- Set the encoding of scripts to UTF-8
vim.opt.encoding = "utf-8"

-- Configure fillchars
vim.opt.fillchars = {
    fold = ' ',
    vert = '│',
    eob = ' ',
    msgsep = '‾',
    diff = '╱'
}

-- Split windows below or to the right
vim.opt.splitright = true

-- Set timeout for mapped sequences
vim.opt.timeoutlen = 300

-- Set time for triggering CursorHold event
vim.opt.updatetime = 300

-- Set Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Disable creating swapfiles
vim.opt.swapfile = false

-- Ignore certain files and folders when globbing
vim.opt.wildignore:append({
    "*.o", "*.obj", "*.dylib", "*.bin", "*.dll", "*.exe",
    "*/.git/*", "*/.svn/*", "*/__pycache__/*", "*/build/**",
    "*.jpg", "*.png", "*.jpeg", "*.bmp", "*.gif", "*.tiff", "*.svg", "*.ico",
    "*.pyc", "*.pkl",
    "*.DS_Store",
    "*.aux", "*.bbl", "*.blg", "*.brf", "*.fls", "*.fdb_latexmk", "*.synctex.gz", "*.xdv"
})

-- Enable case-insensitive matching for file and directory names in command completion
vim.opt.wildignorecase = true

-- General tab settings
vim.opt.tabstop = 8          -- Number of visual spaces per tab
vim.opt.softtabstop = 8      -- Number of spaces in tab when editing
vim.opt.shiftwidth = 8       -- Number of spaces to use for auto-indent
vim.opt.expandtab = false     -- Expand tab to spaces so that tabs are spaces


-- Set matching pairs of characters and highlight matching brackets
vim.opt.matchpairs:append({ "<:>", "「:」", "『:』", "【:】", "“:”", "‘:’", "《:》" })

-- Show line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Ignore case in general, but become case-sensitive when uppercase is present
vim.opt.ignorecase = true
vim.opt.smartcase = true


-- File and script encoding settings for Neovim
vim.opt.fileencoding = "utf-8"

-- Enable line breaking at predefined characters
vim.opt.linebreak = true

-- Character to show before the lines that have been soft-wrapped
vim.opt.showbreak = "↪"

-- List all matches and complete until the longest common string
vim.opt.wildmode = { "list:longest" }

-- Minimum lines to keep above and below cursor when scrolling
vim.opt.scrolloff = 5

-- Use mouse to select and resize windows, etc.
vim.opt.mouse = "nic"       -- Enable mouse in several modes
vim.opt.mousemodel = "popup" -- Set the behavior of the mouse
vim.opt.mousescroll = "ver:1,hor:0" -- Set mouse scrolling behavior


-- Disable showing current mode on command line
vim.opt.showmode = false

-- File formats to use for new files
vim.opt.fileformats = { "unix" }

-- Ask for confirmation when handling unsaved or read-only files
vim.opt.confirm = true

-- Do not use visual and error bells
vim.opt.visualbell = false
vim.opt.errorbells = false

-- Set the number of command and search history to keep
vim.opt.history = 500

-- Use list mode and customized listchars
vim.opt.list = true
vim.opt.listchars = { tab = "▸ ", extends = "❯", precedes = "❮", nbsp = "␣" }

-- Auto-write the file based on some condition
vim.opt.autowrite = true

-- Show hostname, full path of file, and last-mod time on the window title
vim.opt.title = true

-- Persistent undo even after closing and reopening files
vim.opt.undofile = true

-- Do not show "match xx of xx" and other messages during auto-completion
vim.opt.shortmess:append("c")


-- Do not show search match count on bottom right
vim.opt.shortmess:append("S")

-- Disable showing intro message (:intro)
vim.opt.shortmess:append("I")

-- Completion behavior
vim.opt.completeopt:append("menuone")  -- Show menu even if there is only one item
vim.opt.completeopt:remove("preview")  -- Disable the preview window

-- Maximum number of items to show in popup menu
vim.opt.pumheight = 10

-- Pseudo transparency for completion menu
vim.opt.pumblend = 10

-- Pseudo transparency for floating window
vim.opt.winblend = 0

-- Enable shift rounding
vim.opt.shiftround = true

-- Set virtual editing to block mode
vim.opt.virtualedit = "block"

-- Enable tilde (~) operator to act as an operator, requiring motions like `e` or `w` to follow it
vim.opt.tildeop = true

-- Set the maximum column for syntax highlighting
vim.opt.synmaxcol = 250

-- Disable automatic jump to the start of the line when moving the cursor
vim.opt.startofline = false

-- Set up cursor color and shape in various modes
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor20"

-- Display the sign column
vim.opt.signcolumn = "yes:1"


-- Remove certain characters from file name pattern matching
vim.opt.isfname:remove("-", ",") 

-- Diff options
vim.opt.diffopt = ""
vim.opt.diffopt:append("vertical")  -- Show diff in vertical position
vim.opt.diffopt:append("filler")    -- Show filler for deleted lines
vim.opt.diffopt:append("closeoff")  -- Turn off diff when one file window is closed
vim.opt.diffopt:append("context:3") -- Context for diff
vim.opt.diffopt:append({ "internal", "indent-heuristic", "algorithm:histogram", "linematch:60" })

-- Disable line wrapping
vim.opt.wrap = false

-- Disable the display of the ruler
vim.opt.ruler = false

-- Enable true color support
vim.opt.termguicolors = true
