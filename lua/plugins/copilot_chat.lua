return {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    opts = {
      -- See Configuration section for options
	mappings = {
	  reset = {
	      normal = '<A>rs',
	      insert = '<A>rs';
	  },
	  complete = {
	      insert = '<C-c>',
	  },

	  submit_prompt = {
	      normal = '<CR>',
	      insert = '<CR>',
	  }


	},
	window = { 
	    layout = 'replace',
	    relative = 'cursor',
	    row = 3,
	    col = 0,
	    width = 0.6,
	}
    },
    -- See Commands section for default commands if you want to lazy load on them
    lazy = false,

}
