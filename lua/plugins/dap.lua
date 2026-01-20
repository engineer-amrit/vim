return {
  "mfussenegger/nvim-dap",
  config = function()
    vim.schedule(function()
      local dap = require("dap")

      dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          args = {
            vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }

      print("✅ pwa-node adapter HARD overridden")
    end)
  end,
}
