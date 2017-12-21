-- Project Euler Problem 13
-- Task: https://projecteuler.net/problem=13

path = "PATH"

file = io.open(path, "r") -- Open given file in read mode
io.input(file)
sum = 0
for line in io.lines(path) do -- For each line add the number to the sum
	sum = sum + line
end
print(sum)

-- Solution: 5537376230 (correct)