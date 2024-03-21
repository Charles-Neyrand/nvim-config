-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- Colorscheme
	use { "luisiacc/gruvbox-baby" }

	-- Add info to search
	use {'kevinhwang91/nvim-hlslens'}

	-- Tree Sitter
	use { "nvim-treesitter/nvim-treesitter" }

	-- Movement
	use { 'christoomey/vim-tmux-navigator' }
	use { 'smoka7/hop.nvim' }

	-- Status Line
	use { "nvim-lualine/lualine.nvim" }


	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Git
	use { "lewis6991/gitsigns.nvim" }

	-- File Exploring
	-- Fle Tree
	use { 'nvim-tree/nvim-tree.lua' }
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Completion
	-- Command line, search
	use { 'gelguy/wilder.nvim' }
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
			'onsails/lspkind.nvim',
			'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip', "hrsh7th/cmp-cmdline",
		}
	}

	-- LSP --
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use ({
		'nvimdev/lspsaga.nvim',
		after = 'nvim-lspconfig',
		config = function()
			require('lspsaga').setup({})
		end,
	})

	-- Other
	-- Notification
	use { 'rcarriga/nvim-notify' }

	-- Dashboard
	use { 'nvimdev/dashboard-nvim' }

	-- Auto  Save
	--
	use { 'okuuva/auto-save.nvim' }

	-- UI 
	use { "folke/noice.nvim",     "MunifTanjim/nui.nvim" }

	-- help
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup { }
		end
	}

	use {
		"Seowlfh/heptagon.nvim"
	}

end)
