local Pos = require("src/util/Position")
local Diagnostic = require("src/util/Diagnostic")
local Token = require("src/holyp-token")

-- This is the lexer for HolyP.
-- The lexer splits the source code into tokens that hold the parser can go through.
local Lexer = {}
function Lexer.New(source, diag)
	return setmetatable({
		index = 0,
		source = source,
		diagnostics = diag
	}, Lexer)
end


return l
