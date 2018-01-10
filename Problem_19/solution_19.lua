-- Project Euler Problem 19 (Code Name: Calendar Brainfuck)
-- Source: https://projecteuler.net/problem=19
--[[ Strategy/ Notes:
	For each year get for each month the startdate in numbers after 01.01.1900 and count up if the 
]]--

monthDays = {jan = 31, feb = 28, march = 31, april = 30, may = 31, june = 30, july = 31, aug = 31, sept = 30, oct = 31, nov = 30, dec = 31}
-- days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}

-- Returns the days for february in the given year
function determineFebruary(year)
	if determineLeapYear(year) then
		return 29
	else
		return 28
	end
end

-- Returns true if the year is a leapyear or not
function determineLeapYear(year)
	if year % 4 == 0 then
		if year % 1000 == 0 then
			if year % 400 == 0 then
				return true
			end
		else
			return true
		end
	end
	return false
end

-- Returns true if the given day (counted in days after 01.01.1900) is a sunday
function determineDay(daysSince)
	weekday = daysSince % 7
	if weekday == 0 then
		-- return days[7]
		return true
	else
		-- return days[weekday]
		return false
	end
end

function monthsStart()
	-- body
end

counter = 0
for i=1901, 2000 do
	if monthsStart(i) and determineDay(i) then
		counter = counter + 1
	end
end

print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: _______
-- Runtime:
-- Potentials/ Flaws: