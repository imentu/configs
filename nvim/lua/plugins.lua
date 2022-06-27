-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("have not installed packer.nvim")
    return
end

packer.startup({
    function(use)
        -- packer can manage itself
        use {
            'wbthomason/packer.nvim'
        }
        -- telescope
        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                { 'nvim-lua/plenary.nvim' }
            }
        }
        -- gruvbox theme
        use {
            "ellisonleao/gruvbox.nvim",
            requires = { "rktjmp/lush.nvim" }
        }
        -- treesitter
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
        -- theme
        use {
            'glepnir/zephyr-nvim',
            requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
        }
        -- nvim-tree
        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons'
        }
        -- bufferline
        use {
            'akinsho/bufferline.nvim',
            tag = "v2.*",
            requires = 'kyazdani42/nvim-web-devicons'
        }
        -- nvim-lsp
        use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }
        -- nvim-cmp
        use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
        use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
        use 'hrsh7th/cmp-path' -- { name = 'path' }
        use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
        use 'hrsh7th/nvim-cmp'
        -- vsnip
        use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
        use 'hrsh7th/vim-vsnip'
        use 'rafamadriz/friendly-snippets'
        -- lspkind
        use 'onsails/lspkind-nvim'
        -- terminal
        use 'voldikss/vim-floaterm'
        -- status line
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
    end,
    config = {
        max_jobs = 4
    }
})
