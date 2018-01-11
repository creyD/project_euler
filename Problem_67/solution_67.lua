-- Project Euler Problem 67 (Code Name: Triangle of Doom II)
-- Source: https://projecteuler.net/problem=67
path = "input.txt"
triangleTable = {}
file = io.open(path, "r") -- Open given file in read mode
io.input(file)
index = 1
for line in io.lines(path) do
	table.insert(triangleTable, {})
	for i=1, string.len(line), 3 do
		table.insert(triangleTable[index], string.sub(line, i, i+1))
	end
	index = index + 1
end
io.close(file)

function checkleft(Y, X)
	if X and Y and type(triangleTable[Y-1])=='table' and triangleTable[Y-1][X] then
		return triangleTable[Y-1][X] + triangleTable[Y][X]
	end
	return false
end

function checkright(Y, X)
	if X and Y and type(triangleTable[Y-1])=='table' and triangleTable[Y-1][X] and triangleTable[Y][X+1]then
		return triangleTable[Y-1][X] + triangleTable[Y][X+1]
	end
	return false
end

for i=#triangleTable, 2, -1 do
	for j=1, #triangleTable[i] do
		if checkleft(i,j) and checkright(i,j) then
			if checkleft(i,j) > checkright(i,j) then
				triangleTable[i-1][j] = checkleft(i,j)
			else
				triangleTable[i-1][j] = checkright(i,j)
			end
		elseif checkleft(i,j) then
			triangleTable[i-1][j] = checkleft(i,j)
		elseif checkright(i ,j) then 
			triangleTable[i-1][j] = checkright(i,j)
		end
	end
end

print("Hightest sum: " .. triangleTable[1][1])
print("This programm took " .. os.clock()*1000 .. " milliseconds (" .. os.clock() .. " seconds) for execution.")

-- Solution: 7372 (correct)
-- Runtime: 15 milliseconds
-- Potentials/ Flaws: This is the same function as in problem 18