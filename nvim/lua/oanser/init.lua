require("oanser.set")
require("oanser.plugins")
require("oanser.autocommands")
require("oanser.remap")

--  Save file as sudo on files that require root permission
vim.cmd("cabbrev w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")
