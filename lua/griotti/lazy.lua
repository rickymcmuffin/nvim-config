local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
	{
        {
            "folke/tokyonight.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
        },

        { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},


		{
			'nvim-telescope/telescope.nvim',
			tag = '0.1.3',
			dependencies = { 'nvim-lua/plenary.nvim' }
		},
		{ 'nvim-treesitter/nvim-treesitter' },

        { 'tikhomirov/vim-glsl'},

		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v3.x",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
				"MunifTanjim/nui.nvim",
			},
		},
		--- Uncomment these if you want to manage LSP servers from neovim
		{ 'williamboman/mason.nvim' },
		{ 'williamboman/mason-lspconfig.nvim' },

		{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
		{ 'neovim/nvim-lspconfig' },
		{ 'hrsh7th/cmp-nvim-lsp' },
		{ 'hrsh7th/nvim-cmp' },
		{ 'L3MON4D3/LuaSnip' },

		-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
		{
			'numToStr/Comment.nvim',
			opts = {
				-- add any options here
			},
			lazy = false,
		},



	}


)
