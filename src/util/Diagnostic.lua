local Diagnostic = {}

Diagnostic.Mode = {
	Warn = "WARN",
	Error = "ERROR"
}

function Diagnostic.New(message, mode, position)
	local self = {
		Message = message,
		Mode = mode,
		Position = position,
		
	}

	--[[
	--	Returns the Diagnostic as a string.
	--	It follows this format: `[MODE]:POSITION.Y:POSITION.X: MESSAGE`
	--]]
	function self.String()
		local StringBuilder = ""
		
		StringBuilder = StringBuilder.."["..self.Mode.."]:"
		StringBuilder = StringBuilder..self.Position.y..":"..self.Position.x..": "
		StringBuilder = StringBuilder..self.Message

		return StringBuilder
	end
	
	return self
end

return Diagnostic
