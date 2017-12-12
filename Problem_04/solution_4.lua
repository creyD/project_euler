function checkPalindrome(number)
	numberReversed = tonumber(string.reverse(tostring(number)))
	if (number == numberReversed) then
		return true
	end
	return false
end

function getLargestPalindrom(border)
	-- Find the largest possible palindrom from a given border
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

-- Get the largest possible product of three digid numbers
searchedNumber = 999 * 999
searchedNumber = getLargestPalindrom(searchedNumber)

-- rangeA = 100 - 999
-- rangeB = 100 - 999
print("The largest palindrom of three digit numbers is " .. searchedNumber)

