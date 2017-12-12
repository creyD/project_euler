-- Euler Project 5
-- Task: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

number = 1
hit = false
print("Search started...")

repeat
	-- print(number) excluded because of performance
	counter = 0
	i = 1
	repeat
		if (number % i ~= 0) then
			break
		else
			counter = counter + 1
		end
		i = i + 1
	until i > 20
	if (counter == 20) then
		hit = true
	end
	-- Might increase performance to exclude this if statement (actually for about 0.14 minutes)
	if (hit ~= true) then
		number = number + 1
	end
until hit==true

print("Search completed. The number you are looking for is: " .. number)
print("This programm took " .. os.clock()/60 .. " Minutes for execution.")

-- Solution: 232792560 (correct)
-- This programm needed approx. 4 minutes for runtime on an i7-Lenovo-Thinkpad with
-- Update: this program now needs approx. 1.6 minutes for running on the same system (repeat until instead of for)
-- Update 2: with a while-loop it would have taken slightly longer (1.7 minutes). Tried it out just for fun.
	