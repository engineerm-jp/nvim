return {
    "nvim-telescope/telescope-bibtex.nvim",
    config = function ()
        require('telescope').load_extension('bibtex')
    end,

    ft = {'tex', 'plaintex'},
}

