-- Project Euler Problem 25 (Code Name: Fibo II)
-- Source: https://projecteuler.net/problem=25
fibonacci = {}
table.insert(fibonacci, 1) 
table.insert(fibonacci, 1) 
repeat
	a = fibonacci[#fibonacci] + fibonacci[#fibonacci - 1]
	table.insert(fibonacci, a)
	print(a)
until string.len(tostring(i)) == 4

print(i)
-- Probably right but `Not enough memory` in lua --> Python
-- Lua shows big numbers as strings (x*e+014)