-- Project Euler Problem 18 (Code Name: Triangle of Doom)
-- Source: https://projecteuler.net/problem=18
triangleTable = {
		{75}, 
		{95, 64},
		{17, 47, 82},
		{18, 35, 87, 10},
		{20, 04, 82, 47, 65},
		{19, 01, 23, 75, 03, 34},
		{88, 02, 77, 73, 07, 63, 67},
		{99, 65, 04, 28, 06, 16, 70, 92},
		{41, 41, 26, 56, 83, 40, 80, 70, 33},
		{41, 48, 72, 33, 47, 32, 37, 16, 94, 29},
		{53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14},
		{70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57},
		{91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48},
		{63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31},
		{04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23}
}

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

-- Solution: 1074 (correct)
-- Runtime: > 0 milliseconds
-- Potentials/ Flaws: Same algorithm can be used for problem 67