-- Project Euler Problem 18 (Code Name: Triangle of Doom)
-- Source: https://projecteuler.net/problem=18

bigTable = {{75},
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
		{04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23}}

function checkleft(Y, X)
	if X and Y and type(bigTable[Y-1])=='table' and bigTable[Y-1][X-1] then
		return true
	end
	return false
end

function checkright(Y, X)
	if X and Y and type(bigTable[Y-1])=='table' and bigTable[Y-1][X] then
		return true
	end
	return false
end

function getLeft(Y, X)
	return bigTable[Y-1][X-1] + bigTable[Y][X]
end

function getRight(Y, X)
	return bigTable[Y-1][X] + bigTable[Y][X]
end

for j=#bigTable, 2, -1 do
	for i=1, #bigTable[j] do
		if checkleft(j, i) and checkright(j, i) then
			if getLeft(j, i) > getRight(j, i) then
				bigTable[j-1][i-1] =  getLeft(j, i)
			else
				bigTable[j-1][i] = getRight(j, i)
			end
		elseif checkleft(j, i) then
			bigTable[j-1][i-1] =  getLeft(j, i)
		elseif checkright(j, i) then
			bigTable[j-1][i] = getRight(j, i)
		end
	end
end

print("Hightest sum: " .. bigTable[1][1])

print("This programm took " .. os.clock()*1000 .. " milliseconds (" .. os.clock() .. " seconds) for execution.")

-- Solution: 5873 (wrong)
-- Runtime:
-- Potentials/ Flaws:
--[[
	Currently reporting this wrong solution
	--> Gonna flip the wohle thing probably (from bottom to top --> top to bottom)
]]--