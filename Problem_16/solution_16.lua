-- Euler Project 16
-- Task: 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
-- What is the sum of the digits of the number 2^1000?

require "math"

-- This number is too lage for the lua standard number range --> Python it is
a=2^1000

-- Calculating the sum of the digits
summe = 0
for i=1, string.len(a) do
	summe = summe + tonumber(string.sub(a, i, i))
end

print("The sum of the digits is " .. summe)

-- Solution: 1366 (correct)