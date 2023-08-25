require("oanser.set")
require("oanser.plugins")
require("oanser.autocommands")
require("oanser.remap")

--  Save file as sudo on files that require root permission
vim.cmd("cabbrev w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")
local ok, wf = pcall(require, "vim.lsp._watchfiles")
if ok then
	-- disable lsp watcher. Too slow on linux
	wf._watchfunc = function()
		return function() end
	end
end
