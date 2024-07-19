### How to test config script works
1. remove the nvim cache
$rm ~/.local/share/nvim/
2. run nvim 
$nvim ~/.config/nvim



### How to add-on a new plugin
1. append plugin into lazy.nvim setup() within `./lua/user/plugins.lua` file 
2. add customized config. filename into `./lua/user/plugins_config/init.lua` 
3. write your own configuration for the plugin! 
