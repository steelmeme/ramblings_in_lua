-- 145 -> 1! + 4! + 5! = 1 + 24 + 120 == 145
function fact(n) if (n == 0) then return 1 else return n * fact(n-1) end end

test = function(n) 
	if not n then return "Not Strong !!" end
	local fv = 0
	for d in (""..n):gmatch"." do fv = fv + fact(tonumber(d)) end
	if n == tonumber(fv) then return "STRONG!!!!" else return "Not Strong !!" end
end
--print(test(145))
--print(test(144))
