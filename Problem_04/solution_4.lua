-- Project Euler Problem 4
-- Task: A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

-- Check if a number is a palindrome or not
function checkPalindrome(number)
	numberReversed = tonumber(string.reverse(tostring(number)))
	if (number == numberReversed) then
		return true
	end
	return false
end

-- Get the largest palindrom counting down from a given border
function getLargestPalindrom(border)
	checker = true
	while (checker == true) do
		if (checkPalindrome(border)) then 
			checker = false
		else
			border = border - 1
		end
	end
	return border
end

-- Check if the number is the product of two 3-digid numbers
function checkNumber(number)
	hits = {}
	for i=100, 999 do
		if (number % i == 0) then
			table.insert(hits, i)
		end
	end
	for f=1, #hits do
		factor2 = number / hits[f]
		if (string.len(tostring(factor2)) == 3) then
			return factor2
		end
	end
	return false
end

-- START
c = 999 * 999 -- Starting with the largest possible product of any 3-digid numbers
checkerGlob = true

while checkerGlob == true do
	c = getLargestPalindrom(c)
	a = checkNumber(c)
	if (not a == false) then
		checkerGlob = false
	else
		c = c - 1
	end
end

print("The largest palindrom of three digit numbers is " .. c .. "\nIt is the product of " .. c / a .. " times " .. a)
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")
-- Solution: 906609 (correct)
