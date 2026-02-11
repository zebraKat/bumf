local Position = {}

function Position.New(x, y)
	local self = {
		x = x,
		y = y,
	}

	--[[ Returns Position.y ]]--
	function self.Line()
		return self.y
	end

	--[[ Returns Position.x ]]--
	function self.Char()
		return self.x
	end

	return self
end

return Position
