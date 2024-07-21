return {
  "diepm/vim-rest-console",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local impatient = require("impatient")
    impatient.enable_profile()
  end,
}
