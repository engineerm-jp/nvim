return {

    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'gcc' },

    {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
          defaults = {
          layout_strategy = "vertical",
          layout_config = {
              prompt_position = "top",
              vertical = {
                  height = function(_, _, max_lines) return max_lines end,
                  width = 120,
                  preview_cutoff = 0,
                  preview_height = 30,
                  mirror = true,
              },
          },
      },
    },
    extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
	    },
	}
    },
}