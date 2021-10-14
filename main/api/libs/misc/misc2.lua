apiMisc2 = {}
function execute(codes)

file = io.open("main/temp/run.lua","w")
file:write(codes)

file:close()
run = loadfile("main/temp/run.lua")
run()
wait(1)
os. remove("main/temp/run.lua")
end

return apiMisc2