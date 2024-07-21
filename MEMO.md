> ! DO NOT upgrade `indent-blankline` to version 3, still has unresolved issues !

### How to test config script works
1. remove the nvim cache
$rm ~/.local/share/nvim/
2. run nvim 
$nvim ~/.config/nvim

### How to add-on a new plugin in `plugins2` folder
1. CREATE & COMPOSE a plugin config. file insde `lua/john/plugins2` folder 

### [deprecated] How to add-on a new plugin in `plugins` folder
1. CREATE & COMPOSE a plugin config. file insde `lua/john/plugins` folder 
1. APPEND `plugin mod. name` inside setup() block in `./lua/user/lazy.lua` file 
2. APPEND customized plugin config. filename into `./lua/user/plugins_config/init.lua` 
