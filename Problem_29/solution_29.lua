-- Project Euler Problem 29 (Code Name: Easy peasy)
-- Source: https://projecteuler.net/problem=29
integerCombinations = {}
lowerBorder = 2
upperBorder = 100

-- My standard function for checking if a table contains a value
function table.contains(table, testedNumber)
    for j=1, #table do
        if table[j] == testedNumber then
            return true
        end
    end
    return false
end

-- Start of the programm (all numbers in range ^ all numbers in range and if the value is not jet in the table then insert it)
for a=lowerBorder, upperBorder do
	for b=lowerBorder, upperBorder do
		c = a^b
		if not table.contains(integerCombinations, c) then
			table.insert(integerCombinations, c)
		end
	end
end

-- We don't need to sort the table because we just want to know the sum of all values
-- table.sort(integerCombinations)

print("The solution is: " .. #integerCombinations)
print("This programm took " .. os.clock()*1000 .. " milliseconds (" .. os.clock() .. " seconds) for execution.")
-- Solution: 9183 (correct)
-- Runtime: 1.395 seconds