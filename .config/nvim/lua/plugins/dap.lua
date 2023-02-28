function dap_setup()
	local dap = require('dap')
	dap.adapters.python = {
		type = 'executable',
		command = 'python',
		args = { '-m', 'debugpy.adapter' },
	}
	dap.configurations.python = {
		{
			type = 'python',
			request = 'launch',
			name = "Launch file",
			program = "${file}",
			console = "integratedTerminal",
		},
	}

	dap.adapters.php = {
		type = 'executable',
		command = 'node',
		args = { '/home/nataneb/random/vscode-php-debug/out/phpDebug.js' }
	}

	dap.configurations.php = {
		{
			type = 'php',
			request = 'launch',
			name = 'Listen for Xdebug',
			port = 9000
		}
	}
end

return function(use)
	use {
		'mfussenegger/nvim-dap',
		config = dap_setup,
	}
end
