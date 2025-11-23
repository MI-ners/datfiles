return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "flake8" },
			c = { "cpplint" },
			cpp = { "cpplint" },
			go = { "golangcilint" },
		}

		lint.linters.golangcilint = {
			cmd = "golangci-lint",
			args = { "run", "--out-format", "json" },
			stdin = false,
			stream = "stdout",
			ignore_exitcode = true,
			parser = function(output, bufnr)
				local decoded = vim.fn.json_decode(output)
				local diagnostics = {}

				if not decoded or not decoded.Issues then
					return diagnostics
				end

				for _, issue in ipairs(decoded.Issues) do
					table.insert(diagnostics, {
						lnum = issue.Pos.Line - 1,
						col = issue.Pos.Column - 1,
						end_lnum = issue.Pos.Line - 1,
						end_col = issue.Pos.Column,
						severity = issue.Severity == "error" and vim.diagnostic.severity.ERROR
							or vim.diagnostic.severity.WARN,
						source = "golangci-lint",
						message = issue.Text,
					})
				end

				return diagnostics
			end,
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
