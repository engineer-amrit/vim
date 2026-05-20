return {
  "mfussenegger/nvim-dap",
  config = function()
    vim.schedule(function()
      local dap = require("dap")

      -- 🔌 Adapter (YOU ALREADY HAD THIS – KEEP IT)
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

      -- 🚀 CONFIGURATION (THIS WAS MISSING)
      dap.configurations.typescript = {
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach to Node (9229)",

          port = 9229,
          address = "127.0.0.1",
          protocol = "inspector",

          cwd = "${workspaceFolder}",
          sourceMaps = true,

          skipFiles = { "<node_internals>/**" },

          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },

          autoAttachChildProcesses = true,
        },
      }
      dap.configurations.javascript = dap.configurations.typescript

      print("✅ pwa-node adapter + config loaded")
    end)
  end,
}
