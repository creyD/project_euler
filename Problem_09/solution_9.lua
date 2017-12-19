-- Project Euler Problem 9
-- Task: https://projecteuler.net/problem=9
-- Stategy: Brutally Bruteforce the whole thing

function checkNumbers(a, b, c)
	if (c^2 == a^2 + b^2) then
		if (a + b + c == 1000) then
			print("Solution: ".. a*b*c) -- Print the solution
			return true
		end
	end
	return false
end

for i=1, 400 do
	a=i -- Set number a to the iteration
	for j=1, 400 do
		b=j -- Set number b to this iteration
		c = math.sqrt(a^2 + b^2)
		-- Activate this to see progress
		-- print(a .. " " .. b .. " " .. c)
		if checkNumbers(a,b,c) then
			break
		end
	end
end
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: 31875000
-- Runtime: 17.449 seconds (with print)/ 0.07 seconds (without print)
