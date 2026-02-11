--[[
--	If you are using this on PolyToria,
--	you may need to change these imports to fit PolyToria's style.
--]]
local Span = require("src/util/Span")
local Position = require("src/util/Position")
local Diagnostic = require("src/util/Diagnostic")
local Token = require("src/holyp-token")

--[[
--	This is the lexer for HolyP.
--	The lexer splits the source code into tokens that the parser can go through.
--]]
local Lexer = {}

--[[
--	Source - https://stackoverflow.com/a/641993
--	Posted by Doub, modified by community. See post 'Timeline' for change history
--	Retrieved 2026-02-11, License - CC BY-SA 3.0
--]]
local function ShallowCopy(t)
	local t2 = {}
	for k,v in pairs(t) do
		t2[k] = v
	end
	return t2
end


--[[
--	Creates a new Lexer object.
--	This takes in the sourcecode which is a string and an array for storing diagnostics
--	Note that this expects the diagnostics list length to be 0.
--]]
function Lexer.New(source, diagnostics)
	if type(diagnostics) ~= "table" or #diagnostics ~= 0 then
		error("Expected diagnostics to be a table of length 0.")
	end

	if type(source) ~= "string" then
		table.insert(
			diagnostics,
			Diagnostic.New(
				"Expected sourcecode to be a string, instead found "..type(source),
				Diagnostic.Mode.Error,
				Position.New()
			)
		)
	end

	local self = {
		Index = 1,
		Source = source,
		Diagnostics = diagnostics,
		Position = Position.New()
	}
	
	--[[
	--	Returns the character at the current index, then increases the index by one.
	--	Note that if the index is beyond the length of the string, then it will return "EOF".
	--]]
	local function Eat()
		local c = self.At()
		self.Index = self.Index + 1
		self.Position.x = self.Position.x + 1
		if c == '\n' then self.Position.y = self.Position.y + 1; self.Position.x = 1; end
		return c
	end

	--[[
	--	Returns the character at the current index.
	--	Note that if the index is beyond the length of the string, then it will return "EOF".
	--]]
	local function At()
		if #self.Source < self.Index then return "EOF" end
		return string.sub(self.Source, self.Index, self.Index)
	end

	--[[
	--	Converts continuous numbers into a token.
	--	Keep in mind that it will handle floats.
	--]]
	local function TokenizeNumber()
		local NumberString = Eat()
		
	end

	--[[
	--	Converts characters between "s into a token.
	--	Keep in mind that it will error if it encounters a newline or eof.
	--]]
	local function TokenizeString()
		local String = Eat()
		
	end

	--[[
	--	Converts the character between ' into a token.
	--	Keep in mind that it will error if it encounters a newline or eof.
	--	It will also error if it encounters more than one character between the single quotes.
	--]]
	local function TokenizeChar()
		local StartIndex = self.Index
		local StartPosition = ShallowCopy(self.Position)
		_ = Eat()
		local Char = Eat()
		if At() ~= "'" then
			table.insert(
				self.Diagnostics,
				Diagnostic.New(
					"Expected ' to close char, instead found: "..Eat(),
					Diagnostic.Mode.Error,
					self.Position
				)
			)
			_ = Eat()
		end
		
		return Token.New(
			Token.Types.Char,
			string.sub(self.Source, StartIndex, self.Index - 1),
			Span.New(StartPosition, ShallowCopy(self.Position))
		)

	end

end


return l
