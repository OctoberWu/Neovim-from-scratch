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
	{ "folke/which-key.nvim",
    event = 'VeryLazy',
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
