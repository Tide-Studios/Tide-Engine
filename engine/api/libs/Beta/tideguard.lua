TideGuard = {}
local run = true

local code = [[
print("test")
"a"
]]


function IlIlIlIlIlIlIlIlIlIlIlIlI(codes)
a = string.reverse(code)
local B = codes
print(B)
local C = 2/4 * 5/7..math.random()
local D = math.random()
local E = 0
B =  B..C..D..E+1..a
local output = io.open("output.lua","w+")
output:write(B)
output:close() 
end

return TideGuard