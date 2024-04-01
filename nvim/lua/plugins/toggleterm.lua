return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            -- Asigna una tecla para abrir una nueva terminal al lado de la actual
            open_mapping = [[<C-k>]],
        })

        -- Definir función para abrir una nueva terminal adicional
        local function open_new_terminal()
            require('toggleterm').exec(vim.env.SHELL)
        end

        -- Asigna una tecla para abrir una nueva terminal adicional
        vim.api.nvim_set_keymap('n', '<C-k>', ':lua open_new_terminal()<CR>', {noremap = true, silent = true})
    end
}

