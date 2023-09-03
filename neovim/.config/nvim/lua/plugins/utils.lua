return {

	"nvim-lua/plenary.nvim",
	{
		"jiaoshijie/undotree",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
			vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })

			require('undotree').setup()

		end,
		-- opts = {
		-- 	float_diff = true,  -- using float window previews diff, set this `true` will disable layout option
		-- 	layout = "left_bottom", -- "left_bottom", "left_left_bottom"
		-- 	ignore_filetype = { 'undotree', 'undotreeDiff', 'qf', 'TelescopePrompt', 'spectre_panel', 'tsplayground' },
		-- 	window = {
		-- 		winblend = 30,
		-- 	},
		-- 	keymaps = {
		-- 		['j'] = "move_next",
		-- 		['k'] = "move_prev",
		-- 		['J'] = "move_change_next",
		-- 		['K'] = "move_change_prev",
		-- 		['<cr>'] = "action_enter",
		-- 		['p'] = "enter_diffbuf",
		-- 		['q'] = "quit",
		-- 	},
		--
		-- },
	},
}

