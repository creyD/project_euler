-- Project Euler Problem 15
-- Task: https://projecteuler.net/problem=15
size = 20 + 1 -- Size plus one because the decision-dots are exactly one more than the rows of the grid
matrix = {}
for i=1, size do
	table.insert(matrix, {1})
	table.insert(matrix[1], 1)
end

for j=2, size do
	for i=2, size do
		matrix[j][i] = matrix[j][i-1] + matrix[j-1][i]
	end
end
print(matrix[size][size])
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Soluion: 137846528820 (correct)
-- Runtime: < 0 seconds (it's just adding...)