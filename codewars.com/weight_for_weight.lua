function weight(number)
	local val = 0
	for d in number:gmatch"." do val = val + tonumber(d) end	
	return val
end

function cmp(a, b)
	local aw = weight(a)
	local bw = weight(b)
	return aw == bw and a < b or aw < bw
end

local solution = {}
function solution.orderWeight(str)
	local tmp = {}
	for number in string.gmatch(str, "(%d+)") do
		table.insert(tmp, "" .. number)
	end
	table.sort(tmp, cmp)
	return table.concat(tmp, " ")
end
--solution.orderWeight("56 65 74 100 99 68 86 180 90")
--print(unpack(solution))

return solution

