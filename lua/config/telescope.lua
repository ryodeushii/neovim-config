require('telescope').setup({
    defaults = {
        previewer = true,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        -- other defaults configuration here
        layout_config = {horizontal = {width = 0.98, preview_cutoff = 0}}
    }

})
require('nvim-treesitter.configs').setup({})
