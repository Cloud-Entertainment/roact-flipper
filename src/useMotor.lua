local Flipper = require(script.Parent.Parent.Flipper)
local React = require(script.Parent.Parent.React)

local function createMotor(initialValue)
	local initialValueType = type(initialValue)
	if initialValueType == "number" then
		return Flipper.SingleMotor.new(initialValue)
	elseif initialValueType == "table" then
		return Flipper.GroupMotor.new(initialValue)
	else
		error(("Invalid type for initialValue. Expected \"number\" or \"table\", got \"%s\""):format(initialValueType))
	end
end

local function useMotor(initialValue)
	local motor = React.useValue(createMotor(initialValue)).value

	React.useEffect(function()
		return function()
			motor:destroy()
		end
	end, {})

	return motor
end

return useMotor