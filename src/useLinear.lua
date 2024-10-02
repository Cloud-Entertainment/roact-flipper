local Flipper = require(script.Parent.Parent.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useLinear(targetValue, options)
	return useGoal(Flipper.Linear.new(targetValue, options))
end

return useLinear