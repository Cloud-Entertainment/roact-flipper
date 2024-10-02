local Flipper = require(script.Parent.Parent.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useInstant(targetValue)
	return useGoal(Flipper.Instant.new(targetValue))
end

return useInstant