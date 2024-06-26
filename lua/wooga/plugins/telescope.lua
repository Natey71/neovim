return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    },


  }
