Modules = {}

local Errors = 0
module = {add = nil, list = nil, antiInject = nil}

function module.add(modulename,modulepath)
local Module = loadfile(modulepath)
  local status, errorMsg = pcall(Module)
 
  if status == true then
 Module()
  end
  if status == false then
 Errors = Errors + 1


 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write(modulename.." Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

end



return Modules