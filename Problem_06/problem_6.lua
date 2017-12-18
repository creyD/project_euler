-- Project Euler Problem 6
-- Task: https://projecteuler.net/problem=6

function sumOfSquares(border)
	sum = 0
	for i=1, border do
		sum = sum + math.pow(i, 2)
	end
	return sum
end

function squareOfSum(border)
	sum = 0
	for i=1, border do
		sum = sum + i
	end
	sum = math.pow(sum, 2)
	return sum
end

a = sumOfSquares(100)
b = squareOfSum(100)
print(b-a)

-- Solution: 25164150 (correct)