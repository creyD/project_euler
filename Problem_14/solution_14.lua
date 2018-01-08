-- Project Euler Problem 14
-- Task: https://projecteuler.net/problem=14

function getNext(number)
	if number % 2 == 0 then
		nextChainLink = number/2
	else
		nextChainLink = number * 3 + 1
	end
	return nextChainLink
end

function getChainLenght(startingNumber)
	number = startingNumber	counter = 1	stop = false
	repeat
		number = getNext(number)
		counter = counter + 1
		if (number == 1) then
			stop = true
		end
	until stop
	return counter
end

highestVal = 0
highestStart = 0
for j=1, 1000000 do
	a = getChainLenght(j)
	if a > highestVal then
		highestVal = a
		highestStart = j
	end
end

print("Longest chain is " .. highestVal .. " with the starting value of " .. highestStart)
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: 837799 (starting value) and 525 (chain lenght) (correct)
-- Runtime: 31.034 seconds