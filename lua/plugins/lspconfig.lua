return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp"
	},
	config = function()
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_lsp = require("cmp_nvim_lsp")
		local lspconfig = require("lspconfig")

		require("mason").setup()

		mason_lspconfig.setup()
		mason_lspconfig.setup_handlers({
			function (server_name)
				lspconfig[server_name].setup({
					capabilities = cmp_lsp.default_capabilities()
				})
			end,
		})
	end,
	opts = {
		diagnostics = {
			underline = true
		}
	}
}
