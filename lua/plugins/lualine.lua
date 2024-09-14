return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    
    options = {
          icons_enabled = true,
          theme = 'tokyonight',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {{'b:gitsigns_head', icon = ''}, 'diff', 'diagnostics'},

          lualine_c = {'filename', path = 1},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {'mode'},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },

        tabline = {
            lualine_a = {},
            lualine_b = {'branch'},
            lualine_c = {'filename'},
            lualine_z = {},
        },

        inactive_tabline = {
            lualine_a = {'buffers'},
            lualine_b = {'branch'},
            lualine_c = {'filename'},
            lualine_z = {'tabs', 
	    mode      = 1,
		},
        },

        winbar = {
	    lualine_a = {
		sections = {
		    lualine_a = {
			{
			    'datetime',
			      -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
			    style = 'default'
			}
		    }
		}
	    },
	    lualine_b = {},
	    lualine_c = {'filename'},
	    lualine_x = {},
	    lualine_y = {},
	    lualine_z = {}
        },
        inactive_winbar = {
	    lualine_a = {},
	    lualine_b = {},
	    lualine_c = {'filename'},
	    lualine_x = {},
	    lualine_y = {},
	    lualine_z = {}
        },
        extensions = {}
}

