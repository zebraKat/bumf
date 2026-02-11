--[[
-	If you are using this on PolyToria,
-	you may need to change these imports to fit PolyToria's style.
--]]
local Position = require("src/util/Position")
local Diagnostic = require("src/util/Diagnostic")
local Token = require("src/holyp-token")

--[[
-	This is the lexer for HolyP.
-	The lexer splits the source code into tokens that the parser can go through.
--]]
local Lexer = {}

--[[
--	Creates a new Lexer object.
--	This takes in the sourcecode which is a string and an array for storing diagnostics
--	Note that this expects the diagnostics list length to be 0.
--]]
function Lexer.New(source, diagnostics)
	local self = {
		Index = 1,
		Source = source,
		Diagnostics = diagnostics,
		Position = Position.New()
	}
	
	--[[
	-	Returns the character at the current index, then increases the index by one.
	-	Note that if the index is beyond the length of the string, then it will return "EOF".
	--]]
	function self.Eat()
		local c = self.At()
		self.Index = self.Index + 1
		return c
	end

	--[[
	-	Returns the character at the current index.
	-	Note that if the index is beyond the length of the string, then it will return "EOF".
	--]]
	function self.At()
		if #self.Source < self.Index then return "EOF" end
		return string.sub(self.Source, self.Index, self.Index)
	end

end



return l
