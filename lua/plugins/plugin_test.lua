return {

    {
      "williamboman/mason.nvim",
    },
  
    { "folke/which-key.nvim", lazy = false },
  

    { "nvim-tree/nvim-web-devicons", lazy = true },

    -- Auto save
    {
      "Pocco81/auto-save.nvim",
      enabled = true,
      lazy = false,
    },

    {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },

    {
        "github/copilot.vim",
        lazy = true,
    },

    {
      "lewis6991/gitsigns.nvim",
      lazy = false,
      opts = {
	numhl = true,
    	current_line_blame = true,
    	current_line_blame_opts = {
        delay = 5000,
    	},
    },

   },

}
