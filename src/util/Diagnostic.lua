local Diagnostic = {}
Diagnostic.Mode = {
	warn = "WARN",
	error = "ERROR"
}

function Diagnostic.New(message, mode, pos)
	return setmetatable({
		msg = message,
		mode = mode,
		pos = pos
	}, Diagnostic)
end

function Diagnostic:String()
	-- [MODE]:Y:X: MESSAGE
	local str = ""
	str = str.."["..self.mode.."]:"
	str = str..self.pos.y..":"..self.pos.x..": "
	str = str..self.msg
	return str
end

return Diagnostic
