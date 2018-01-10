-- Project Euler Problem 17
-- Task: https://projecteuler.net/problem=17
numbersArray = {"one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety","hundred","thousand"}

function underHundred(number)
	if number == 0 then
		return ""
	elseif number > 0 and number <= 20 then
		zahl = numbersArray[number]
	elseif number > 20 and number < 30 then
		number = number - 20
		zahl = numbersArray[20] .. underHundred(number)
	elseif number >= 30 and number < 40 then
		number = number - 30
		zahl = numbersArray[21] .. underHundred(number)
	elseif number >= 40 and number < 50 then
		number = number - 40
		zahl = numbersArray[22] .. underHundred(number)
	elseif number >= 50 and number < 60 then
		number = number - 50
		zahl = numbersArray[23] .. underHundred(number)
	elseif number >= 60 and number < 70 then
		number = number - 60
		zahl = numbersArray[24] .. underHundred(number)
	elseif number >= 70 and number < 80 then
		number = number - 70
		zahl = numbersArray[25] .. underHundred(number)
	elseif number >= 80 and number < 90 then
		number = number - 80
		zahl = numbersArray[26] .. underHundred(number)
	elseif number >= 90 and number < 100 then
		number = number - 90
		zahl = numbersArray[27] .. underHundred(number)
	elseif number == 100 then
		zahl = numbersArray[1] .. numbersArray[28]
	end
	return zahl
end

function wordlenght(number)
	if number > 0 and number <= 100 then
		zahl = underHundred(number)
	elseif number == 1000 then
		zahl = numbersArray[1] .. numbersArray[29]
	elseif number % 100 == 0 then
		test = number/100
		zahl = numbersArray[test] .. numbersArray[28]
	elseif number > 100 and number < 200 then
		number = number - 100
		zahl = numbersArray[1] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 200 and number < 300 then
		number = number - 200
		zahl = numbersArray[2] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 300 and number < 400 then
		number = number - 300
		zahl = numbersArray[3] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 400 and number < 500 then
		number = number - 400
		zahl = numbersArray[4] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 500 and number < 600 then
		number = number - 500
		zahl = numbersArray[5] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 600 and number < 700 then
		number = number - 600
		zahl = numbersArray[6] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 700 and number < 800 then
		number = number - 700
		zahl = numbersArray[7] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 800 and number < 900 then
		number = number - 800
		zahl = numbersArray[8] .. numbersArray[28] .. "and" .. underHundred(number)
	elseif number > 900 and number < 1000 then
		number = number - 900
		zahl = numbersArray[9] .. numbersArray[28] .. "and" .. underHundred(number)
	end
	return string.len(zahl)
end

sum = 0
for i=1, 1000 do
	sum = sum + wordlenght(i)
end

print(sum)
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: 21124 (correct)
-- Runtime: 0.003 seconds
-- This might be possible more performant and better in general
-- TODO: Rework this solution