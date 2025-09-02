vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- local projectfile = vim.fn.getcwd() .. "/project.godot"
-- if projectfile then
-- 	vim.fn.serverstart("./godothost")
-- end
