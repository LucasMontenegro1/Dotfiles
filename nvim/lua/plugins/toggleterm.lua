return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        local counter = 1

        local function executeToggleTerm()
            counter = counter + 1
            local command = ":ToggleTerm"..counter.."<CR>"
            vim.api.nvim_set_keymap('n', '<C-t>',command,{noremap = true, silent = true})
        end


        require("toggleterm").setup({
            on_open = function()
                executeToggleTerm()
                vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]])

            end,
            vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm <CR>', {noremap = true, silent = true}),
            --vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]])
        })
    end
}

