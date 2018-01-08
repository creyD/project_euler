-- Project Euler Problem 11
-- Task: https://projecteuler.net/problem=11
rowA = {08, 02, 22, 97, 38, 15, 00, 40, 00, 75, 04, 05, 07, 78, 52, 12, 50, 77, 91, 08}
rowB = {49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 04, 56, 62, 00}
rowC = {81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 03, 49, 13, 36, 65}
rowD = {52, 70, 95, 23, 04, 60, 11, 42, 69, 24, 68, 56, 01, 32, 56, 71, 37, 02, 36, 91}
rowE = {22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80}
rowF = {24, 47, 32, 60, 99, 03, 45, 02, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50}
rowG = {32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70}
rowH = {67, 26, 20, 68, 02, 62, 12, 20, 95, 63, 94, 39, 63, 08, 40, 91, 66, 49, 94, 21}
rowI = {24, 55, 58, 05, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72}
rowJ = {21, 36, 23, 09, 75, 00, 76, 44, 20, 45, 35, 14, 00, 61, 33, 97, 34, 31, 33, 95}
rowK = {78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 03, 80, 04, 62, 16, 14, 09, 53, 56, 92}
rowL = {16, 39, 05, 42, 96, 35, 31, 47, 55, 58, 88, 24, 00, 17, 54, 24, 36, 29, 85, 57}
rowM = {86, 56, 00, 48, 35, 71, 89, 07, 05, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58}
rowN = {19, 80, 81, 68, 05, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 04, 89, 55, 40}
rowO = {04, 52, 08, 83, 97, 35, 99, 16, 07, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66}
rowP = {88, 36, 68, 87, 57, 62, 20, 72, 03, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69}
rowQ = {04, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 08, 46, 29, 32, 40, 62, 76, 36}
rowR = {20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 04, 36, 16}
rowS = {20, 73, 35, 29, 78, 31, 90, 01, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 05, 54}
rowT = {01, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 01, 89, 19, 67, 48}

bigTable = {} table.insert(bigTable, rowA) table.insert(bigTable, rowB) table.insert(bigTable, rowC) table.insert(bigTable, rowD) table.insert(bigTable, rowE) table.insert(bigTable, rowF) table.insert(bigTable, rowG) table.insert(bigTable, rowH) table.insert(bigTable, rowI) table.insert(bigTable, rowJ) table.insert(bigTable, rowK) table.insert(bigTable, rowL) table.insert(bigTable, rowM) table.insert(bigTable, rowN) table.insert(bigTable, rowO) table.insert(bigTable, rowP) table.insert(bigTable, rowQ) table.insert(bigTable, rowR) table.insert(bigTable, rowS) table.insert(bigTable, rowT) 

-- HORIZONTAL
function get4Horizontal(table, rangeStart)
	product = table[rangeStart] -- The first value is the start value
	rangeEnd = rangeStart + 3 -- End of range is 12 chars later on the 13nd char
	rangeStart = rangeStart + 1 -- Because of line 11 we need to start with the second char in range (else we would use the first 2 times)
	for i=rangeStart, rangeEnd do
		product = product * table[i] -- All other values are multiplied by it and each other
	end
	return product
end

function getRowHorizontal(table)
	highVal = 0
	for i=1, #table-4 do
		if (get4Horizontal(table, i) > highVal) then
			highVal = get4Horizontal(table, i)
		end
	end
	return highVal
end

-- Maximum is 48477312
function getAllHorizontal(table)
	highestOfEmAll = 0
	for k,v in pairs(table) do
		a = getRowHorizontal(v)
		if (a > highestOfEmAll) then
			highestOfEmAll = a
		end
	end
	return highestOfEmAll
end

-- VERTICAL
-- Maximum is 51267216
function getAllVertical()
	newTable = {}
	for y=1, 20 do
		nini = {}
		for k,n in pairs(bigTable) do
			table.insert(nini, n[y])
		end
		table.insert(newTable, nini)
	end
	return getAllHorizontal(newTable)
end

-- DIAGONAL
function getRowValue(a, b, tabelle)
	row = {}
	for d = 0, 3 do
		if a and b and type(tabelle[a + d])=='table' and tabelle[a + d][b + d] then
			table.insert(row, tabelle[a + d][b + d])
		end
	end
	value = row[1]
	for a=2, #row do 
		value = value * row[a]
	end
	return value
end

-- Maximum is 40304286
function diagonal(tabelle)
	highestVal = 0
	for b = 1, 20 do
		for a = 1, 20 do
			if getRowValue(b, a, tabelle) then
				if getRowValue(b, a, tabelle) > highestVal then
					highestVal = getRowValue(b, a, tabelle)
				end
			end
		end
	end
	return highestVal
end

-- Maximum is 70600674
function diagonalDownLeft()
	newTable = {{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}}
	for i=1, #bigTable do
		for j=20, 1, -1 do
			table.insert(newTable[i], bigTable[i][j])
		end
	end
	return diagonal(newTable)
end

-- MAIN FUNCTION
function main()
	hoechstWert = 0
	if getAllHorizontal(bigTable) > hoechstWert then
		hoechstWert = getAllHorizontal(bigTable)
	end
	if getAllVertical() > hoechstWert then
		hoechstWert = getAllVertical()
	end
	if diagonal(bigTable) > hoechstWert then
		hoechstWert = diagonal(bigTable)
	end
	if diagonalDownLeft() > hoechstWert then
		hoechstWert = diagonalDownLeft()
	end
	print("Highest value: " .. hoechstWert)
	print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")
	return 0
end

main()

-- Solution: 70600674 (correct)
-- Runtime: 0.009 seconds