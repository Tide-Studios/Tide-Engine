api = {}
-- Loader --
local auth = loadfile("engine/api/auth/auth.lua")
auth()
print("⎯⎯⎯ Modules Loaded ⎯⎯⎯")

local Errors = 0

local APIdraw = loadfile("engine/api/libs/Draw/draw.lua")
  local status, errorMsg = pcall(APIdraw)
  if status == true then
  print("APIDraw:✅")
 APIdraw()
 end
  if status == false then -- Prevents Errors from the Progam
 Errors = Errors + 1
 print("APIDraw:🛑")
 print("ErrorMessage:"..errorMsg)
 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")
 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

local APImisc =  loadfile("engine/api/libs/misc/misc1.lua")
  local status, errorMsg = pcall(APImisc) 
  if status == true then
  print("APIMisc:✅")
 APImisc()
  end
  if status == false then
 Errors = Errors + 1
 print("APIMisc:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

local APImisc2 = loadfile("engine/api/libs/misc/misc2.lua")
  local status, errorMsg = pcall(APImisc2)
  if status == true then
 print("APIMisc2:✅")
  end
  if status == false then
 Errors = Errors + 1
 print("APIMisc: Failed!")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APIConsole = loadfile   ("engine/api/libs/Console/console.lua")
  local status, errorMsg = pcall(APIConsole)
  if status == true then
 print("APIConsole:✅")
 APIConsole()
  end
  if status == false then
 Errors = Errors + 1
 print("APIConsole:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APISystem = loadfile("engine/api/libs/System/System1.lua")
  local status, errorMsg = pcall(APISystem)
  if status == true then
 print("APISystem:✅")
 APISystem()
  end
  if status == false then
 Errors = Errors + 1
 print("APISystem:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engime/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APIPackages = loadfile("engine/api/libs/Packages/package1.lua")
  local status, errorMsg = pcall(APIPackages)
  if status == true then
 print("APIPackages:✅")
  APIPackages()
  end
  if status == false then
 Errors = Errors + 1
 print("APIPackages:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APISprite = loadfile("engine/api/libs/Sprite/sprite1.lua")
  local status, errorMsg = pcall(APISprite)
  if status == true then
 print("APISprite:✅")
 APISprite()
  end
  if status == false then
 Errors = Errors + 1
 print("APISprite:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end


local TideGuard =  loadfile("engine/api/libs/Beta/tideguard.lua")
  local status, errorMsg = pcall(TideGuard) 
  if status == true then
  print("TideGuard:✅")
 TideGuard()
  end
  if status == false then
 Errors = Errors + 1
 print("TideGuard:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end





local APIShader = loadfile  ("engine/api/libs/Shaders/shader.lua")
  local status, errorMsg = pcall(APIShader)
  if status == true then
 print("APIShader:✅")
 APIShader()
  end
  if status == false then
 Errors = Errors + 1
 print("APIShader:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("engine/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end



if love.window.isOpen() then
if Errors == 0  then
print("All Modules loaded Successfully!")
end
if Errors > 0 then
print(Errors.."/7 did have a error in it! Check logs for info!")
end
print("⎯⎯⎯ Console ⎯⎯⎯")
end
return api