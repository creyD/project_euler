-- Project Euler Problem 1
-- Task: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

list = {} summe = 0
for i=1, 999 do
	if (i % 3 == 0 or i % 5 == 0) then
		table.insert(list, i)
		summe = summe + i
	end
end
print("Die Summe aller durch 3 und durch 5 teilbaren Zahlen unter 1000 ist: " .. summe)

-- Solution: 233168 (Correct)