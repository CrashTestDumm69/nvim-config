return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp-signature-help",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")

		local lspkind = require("lspkind")

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			mapping = cmp.mapping.preset.insert({
				["<ESC>"] = cmp.mapping.abort(),
				["<TAB>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
                { name = "nvim_lsp_signature_help" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
			experimental = {
				ghost_text = true,
			},
		})
	end,
}
