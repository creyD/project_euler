-- Project Euler Problem 21 (Code Name: Amicable numbers (Whatever~))
-- Source: https://projecteuler.net/problem=21
function checkNumber(number)
	sum = 0
	for i=1, number-1 do
		if number%i == 0 then
			sum = sum + i
		end
	end
	if number < sum then
		return true
	end
	return false
end

function table.contains(table, testedNumber)
    for j=1, #table do
        if table[j] == testedNumber then
            return true
        end
    end
    return false
end

-- All integers greater than 28123 can be written as the sum of two abundant numbers
abundantNumbers = {}
for i=1, 28123 do
	if checkNumber(i) then
		table.insert(abundantNumbers, i)
	end
end
sums = {}
for i=1, #abundantNumbers do
	for j=i+1, #abundantNumbers do
		table.insert(sums, abundantNumbers[i] + abundantNumbers[j])
	end
end
overallSum = 0
for i=1, 28123 do
	if not table.contains(sums, i) then
		overallSum = overallSum + i
	end
end

-- All positive integers which cannot be written as the sum of two abundant numbers
print(overallSum)
print("This programm took " .. os.clock()*1000 .. " milliseconds (" .. os.clock() .. " seconds) for execution.")
-- Solution:
-- Runtime:
-- Potentials/ Flaws: Way overcomplicated and taking too long...