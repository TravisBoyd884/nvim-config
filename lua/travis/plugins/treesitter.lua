return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})

		require("nvim-treesitter.parsers").get_parser_configs().asm = {
			install_info = {
				url = "https://github.com/rush-rs/tree-sitter-asm.git",
				files = { "src/parser.c" },
				branch = "main",
			},
		}
	end,
}
