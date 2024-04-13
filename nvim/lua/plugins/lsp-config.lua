return{
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {

        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_install = {"lua_ls","pyright","rust_analyzer","golangci_lint_ls","html","tsserver","clangd","cmake","dockerls"}
            })
        end

    },

    {

        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.golangci_lint_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.clangd.setup({})
            lspconfig.cmake.setup({})
            lspconfig.dockerls.setup({})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gg", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set({ "n" }, "<C-l>", "<cmd>noh<CR>")
        end

    }
}
