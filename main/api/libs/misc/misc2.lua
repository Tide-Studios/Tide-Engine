apiMisc2 = {}
function execute(codes)

file = io.open("main/api/libs/misc/run.lua","w")
file:write(codes)

file:close()
run = loadfile("main/api/libs/misc/run.lua")
run()
end

return apiMisc2