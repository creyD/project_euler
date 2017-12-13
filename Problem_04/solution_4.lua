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

-- Check if the number can be divided by any 3 digid number
function checkNumber(number)
	hits = {}
	for i=100, 999 do
		if (number % i == 0) then
			table.insert(hits, i)
		end
	end
	for f=1, #hits do
		x = number / hit[i]
		if (string.len(tostring(x)) == 3) then
			return x
		end
	end
	return false
end

-- Get the largest possible product of three digid numbers
c = 999 * 999
c = getLargestPalindrom(c)

a = checkNumber(c)

if (a == false) then
	print("Yo")
else
	i = c / a
	print(i .. a .. c)
end



-- if it is divided with % 0 at any three digid number, just trace it back

-- rangeA = 100 - 999
-- rangeB = 100 - 999
print("The largest palindrom of three digit numbers is " .. c)

