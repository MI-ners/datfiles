return {
	{
		"zbirenbaum/copilot.lua",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"giuxtaposition/blink-cmp-copilot",
		},
		opts = {
			completion = { documentation = { auto_show = true } },
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "copilot" },
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-cmp-copilot",
						score_offset = 100,
						async = true,
						transform_items = function(_, items)
							local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
							local kind_idx = #CompletionItemKind + 1
							CompletionItemKind[kind_idx] = "Copilot"
							for _, item in ipairs(items) do
								item.kind = kind_idx
							end
							return items
						end,
					},
				},
			},
			appearance = {
				kind_icons = {
					Copilot = "", -- custom icon for Copilot
				},
			},
		},
	},
}
