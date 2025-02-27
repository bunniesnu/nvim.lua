return {
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()

			dap.adapters.cpptools = {
				type = "executable",
				name = "cpptools",
				command = vim.fn.stdpath("data") .. "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
				args = {},
				attach = {
					pidProperty = "processId",
					pidSelect = "ask",
				},
			}

			dap.configurations.cpp = {
				{
					name = "Launch",
					type = "cpptools",
					request = "launch",
					program = function()
						-- Get the current file name without extension
						local filename = vim.fn.expand("%:r") -- `%:r` removes extension
						local fullpath = vim.fn.getcwd() .. "/" .. filename -- Get full path

						-- Check if the file exists before returning
						if vim.fn.filereadable(fullpath) == 1 then
							return fullpath
						else
							return vim.fn.input("Path to executable: ", fullpath, "file")
						end
					end,

					cwd = "${workspaceFolder}",
					stopOnEntry = true,
					args = {},
					runInTerminal = false,
				},
			}

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
			vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<leader>dc", dap.continue, {})
		end,
	},
}
