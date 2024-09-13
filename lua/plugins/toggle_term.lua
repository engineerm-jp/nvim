
    -- {
    --   "voldikss/vim-floaterm",
    -- },
return {
    -- amongst your other plugins
    -- {'akinsho/toggleterm.nvim', version = "*", config = true}
    -- or
    {'akinsho/toggleterm.nvim', version = "*",
	opts = {--[[ things you want to change go here]]
	    highlights = {
		FloatBorder = {
		    guifg = '#66c2b5'
		},
		   },
	    float_opts = {

		border = 'single',
		width = 150,
		height = 50,
		close_on_exit = false,
		-- winblend = 300,
	    }
	}
    },
}
