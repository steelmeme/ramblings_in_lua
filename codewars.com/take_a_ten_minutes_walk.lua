return {
	is_valid_walk = function(walk)
		local steps = 0
		local x = 0
		local y = 0
		for _,dir in pairs(walk) do
			if dir == 'n' then y = y + 1 end
			if dir == 's' then y = y - 1 end
			if dir == 'w' then x = x - 1 end
			if dir == 'e' then x = x + 1 end
			steps = steps + 1
		end
		return steps == 10 and x == 0 and y == 0
     end
}
