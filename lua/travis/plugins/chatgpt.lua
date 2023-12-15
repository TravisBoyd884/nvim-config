return {
	"dreamsofcode-io/ChatGPT.nvim",
	config = function()
		require("chatgpt").setup({
			async_api_key_cmd = "pass show api/tokens/openai",
		})
	end,
}
