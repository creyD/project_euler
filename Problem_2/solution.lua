fibo = {} sum = 0 table.insert(fibo, 1) table.insert(fibo, 2)
repeat
	i = fibo[#fibo] +  fibo[#fibo - 1]
	table.insert(fibo, i)
until i > 4000000

for i=1, #fibo do
	if (fibo[i] % 2 == 0) then
		sum = sum + fibo[i]
	end
end

print(sum)