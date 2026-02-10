local Position = {}

function Position.New(x, y)
	return setmetatable({
		x = x,
		y = y
	}, Position)
end

function Position:Line()
	return self.y
end

function Position:Char()
	return self.x
end

return Position
