local cmp = require("cmp")
local lspkind = require('lspkind')

cmp.setup( {
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
---@diagnostic disable-next-line: undefined-global
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},


	mapping = cmp.mapping.preset.insert {
		["<Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		["<S-Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end,
		["<CR>"] = cmp.mapping.confirm { select = true },
		["<C-e>"] = cmp.mapping.abort(),
		["<Esc>"] = cmp.mapping.close(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
	},
	sources = {
		{ name = "nvim_lsp" }, -- For nvim-lsp
		{ name = "path" }, -- for path completion
		{ name = "calc" }, -- for calc
		{ name = "vsnip" },
	},
	completion = {
		keyword_length = 1,
		completeopt = "menu,noselect,menuone, noinsert",
	},
	view = {
		entries = "custom",
	},

	formatting = {
		format = lspkind.cmp_format({
			mode = 'text_symbol', -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			-- can also be a function to dynamically calculate max width such as 
			-- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
			ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
			show_labelDetails = true,  })},
		})


