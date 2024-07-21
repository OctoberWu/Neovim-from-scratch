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


require("lazy").setup({
  { "nvim-lua/plenary.nvim" },  -- Useful lua functions used by lots of plugins
  { "kyazdani42/nvim-tree.lua" },
  { "lukas-reineke/indent-blankline.nvim" },
	{ "folke/which-key.nvim",
    event = 'VeryLazy',
  },

	-- Cmp 
  { "hrsh7th/nvim-cmp", 
    event = 'InsertEnter',
  }, -- The completion plugin
  { "hrsh7th/cmp-buffer" },       -- buffer completions
  { "hrsh7th/cmp-path" },         -- path completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },

	-- Snippets
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    build = "make install_jsregexp"
  },

	-- Telescope
  {
    'nvim-telescope/telescope.nvim', 
    version = '0.1.4',
    dependencies = { "nvim-lua/plenary.nvim" }
  }, 

  -- Debugging
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },


  -- Plugins 
  { import = "john.plugins2" },

  -- LSP
  { import = "john.plugins2.lsp" } 
},
{
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
}
)
