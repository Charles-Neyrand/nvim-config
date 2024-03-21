--  This is my nvim configuration.

-- Author: Charles Neyrand
-- Email: charles.neyrand@lse.re

-- Options
require "carolus.config.options"

-- Colorscheme
require "carolus.config.colorscheme"

-- Keymaps
require "carolus.config.keymaps"

-- Plugins
require "carolus.plugins.plugins"
require "carolus.plugins.confs.hlslen"
require "carolus.plugins.confs.treesitter"
require "carolus.plugins.confs.nvim-tree"
require "carolus.plugins.confs.nvim-notify"
require "carolus.plugins.confs.nvim-hop"

require "carolus.plugins.confs.statusline"
require "carolus.plugins.confs.gitsigns"
require "carolus.plugins.confs.dashboard-nvim"

--require "carolus.plugins.confs.wilders"
require "carolus.plugins.confs.nvim-cmp"
require "carolus.plugins.confs.telescope"

require "carolus.plugins.confs.autosave"

require "carolus.plugins.confs.noice"

-- LSP --
require "carolus.plugins.lsp.lsp-config"
require "carolus.plugins.lsp.lsp-saga"
require "carolus.plugins.lsp.lsp-mappings"

-- Welcome:
require("notify")("Welcome Back!")
