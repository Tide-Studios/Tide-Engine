Modules = {}

local Errors = 0
module = {add = nil, list = nil, antiInject = nil}

function module.add(modulename,modulepath)
local Module = loadfile(modulepath)
  local status, errorMsg = pcall(Module)
  if status == true then
 print(modulename..":✅")
 Module()

  end
  if status == false then
 Errors = Errors + 1
 print(modulename..":🛑")

 print(""..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

end



return Modules