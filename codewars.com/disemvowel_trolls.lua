kata = {}

function kata.disemvowel(s)
	local candidate = ""
	for c in s.gmatch("(^[aeiouAEIOU])") do candidate = candidate .. c end
	return candidate
end


return kata
