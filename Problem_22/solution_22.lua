-- Project Euler Problem 21 (Code Name: Whatever amicable numbers are ~)
-- Source: https://projecteuler.net/problem=21

-- Returning the worth of a single letter
function calcLetter(letter)	
	for i=1, 26 do
		if string.sub(alphabet, i,i) == letter then
			return i
		end
	end
end

-- Calculating the worth of the letters of a name
function calcNameLetters(name)
	worth = 0
	name = string.lower(name)
	for i=1, string.len(name) do
		worth = worth + calcLetter(string.sub(name,i,i))
	end
	return worth
end

-- Reading the data
alphabet = "abcdefghijklmnopqrstuvwxyz"
namesArray = {}
path = "input.txt"
file = io.open(path, "r")
io.input(file)
inputstring = io.read("*line")
io.close(file)

for names in string.gmatch(inputstring, "([^,]+)") do
	name = string.sub(names, 2, string.len(names) - 1)
	table.insert(namesArray, name)
end

sum = 0
table.sort(namesArray) -- Thank you lua for this wonderful function!
for i=1, #namesArray do
	sum = sum + calcNameLetters(namesArray[i]) * i
end

print("The sum is: " .. sum)
print("This programm took " .. os.clock()*1000 .. " milliseconds (" .. os.clock() .. " seconds) for execution.")

-- Solution: 871198282 (correct)
-- Runtime: 59 milliseconds (incl. reading the file)
