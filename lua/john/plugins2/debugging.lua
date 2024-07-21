return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go"
  },
  config = function()
    local dap = require("dap")

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end


    vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<Leader>dr', dap.run, {})
    vim.keymap.set('n', '<Leader>dc', dap.continue, {})
    vim.keymap.set('n', '<Leader>dx', dap.terminate, {})
    vim.keymap.set("n", "<Leader>dso", dap.step_over, {})

    -- vim.keymap.set("n", "<Leader>dt", ':DapToggleBreakpoint<CR>')
    -- vim.keymap.set("n", "<Leader>dx", ':DapTerminate<CR>')
    -- vim.keymap.set("n", "<Leader>do", ':DapStepOver<CR>')

    -- Dap, Dapui --
    -- local dap = require('dap')
    vim.keymap.set('n', '<F5>', function() dap.continue() end)
    vim.keymap.set('n', '<F10>', function() dap.step_over() end)
    vim.keymap.set('n', '<F11>', function() dap.step_into() end)
    vim.keymap.set('n', '<F12>', function() dap.step_out() end)
    vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
    vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
    vim.keymap.set('n', '<Leader>df', function() require("dapui").float_element('scopes', { enter = true }) end)
    vim.keymap.set('n', 'dui', function() dapui.toggle() end)

    local dapui = require("dapui")
    dapui.setup()

    -- Language Adapter --
    local dap_go = require("dap-go")
    dap_go.setup()

  end,
}
