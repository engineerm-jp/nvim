
return {
      "nvim-treesitter/nvim-treesitter",
      lazy = false,
      opts = {
          highlight = {
	      enable = true,
	      diable = {

	      },
	  },
          indent = {
	      enable = true,
	      disable = {

	      }
	  },
          ensure_installed = {
            "bash",
            "c",
            "html",
            "lua",
            "luadoc",
            "luap",
            "markdown",
            "markdown_inline",
            "python",
            "vim",
            "vimdoc",
            "xml",
            "yaml",
          },
      },
}
