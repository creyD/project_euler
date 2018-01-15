-- Project Euler Problem 21 (Code Name: Amicable numbers (Whatever~))
-- Source: https://projecteuler.net/problem=21
overallSum = 0
abundantNumbers = {}
abundantSums = {}
-- My standard function for checking if a table contains a value
function table.contains(table, testedNumber)
    for j=1, #table do
        if table[j] == testedNumber then
            return true
        end
    end
    return false
end

-- Function for checking whether a number is abundant or not (returns true when abundant)
function checkAbundant(number)
	divisorsum = 0
	for i=1, number-1 do
		if number%i == 0 then
			divisorsum = divisorsum + i
		end
	end
	if divisorsum > number then
		return true
	end
	return false
end

-- Function returning an array of the sums of everything from the given array
function getAbundantSums()
	for j=1, #abundantNumbers do
		for h=j, #abundantNumbers do
			if abundantNumbers[j] + abundantNumbers[h] <= 28123 then
				table.insert(abundantSums, abundantNumbers[j] + abundantNumbers[h])
			end
		end
	end
	abundantNumbers = nil
	return abundantSums
end

-- Get abundant numbers
for i=1, 28123 do
	if checkAbundant(i) then
		table.insert(abundantNumbers, i)
	end
end

-- Get abundant sums
getAbundantSums()

-- Get numers that aren't a sum of abundant numbers
for i=1, 28123 do
	if not table.contains(abundantSums, i) then
		overallSum = overallSum + i
	end
end

-- Print the solution
print("The overall sum of numbers that aren't sums of abundant numbers is ".. overallSum)
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: 4179871 (correct)
-- Runtime: 21.8 minutes
-- Potentials/ Flaws: Taking too long (because of Lua)