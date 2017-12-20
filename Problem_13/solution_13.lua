path = "***REMOVED***"

file = io.open(path, "r")
io.input(file)
string = ""
for line in io.lines(path) do
	string = string .. line
end

print(string)

