-- Project Euler Problem 2
-- Task: Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fibo = {} sum = 2 table.insert(fibo, 1) table.insert(fibo, 2) -- Sum is 2 because of the first two values wich are already in the table (only 2 is even)
repeat
	i = fibo[#fibo] +  fibo[#fibo - 1]
	table.insert(fibo, i)
	if (i % 2 == 0) then
		sum = sum + i
	end
until i > 4000000

print(sum)

-- Solution: 4613732 (Correct)