api = {}

-- Loader --
print("⎯⎯⎯ Modules Loaded ⎯⎯⎯")
local Errors = 0
local APIdraw = loadfile("main/api/libs/Draw/draw.lua")
  local status, errorMsg = pcall(APIdraw)
  if status == true then
  print("APIDraw:✅")
 APIdraw()
 end
  if status == false then -- Prevents Errors from the Progam
 Errors = Errors + 1
 print("APIDraw:🛑")
 print("ErrorMessage:"..errorMsg)
 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")
 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

local APImisc =  loadfile("main/api/libs/misc/misc1.lua")
  local status, errorMsg = pcall(APImisc) 
  if status == true then
  print("APIMisc:✅")
 APImisc()
  end
  if status == false then
 Errors = Errors + 1
 print("APIMisc:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

local APImisc2 = loadfile("main/api/libs/misc/misc2.lua")
  local status, errorMsg = pcall(APImisc2)
  if status == true then
 print("APIMisc2:✅")
  end
  if status == false then
 Errors = Errors + 1
 print("APIMisc: Failed!")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APIConsole = loadfile   ("main/api/libs/Console/console.lua")
  local status, errorMsg = pcall(APIConsole)
  if status == true then
 print("APIConsole:✅")
 APIConsole()
  end
  if status == false then
 Errors = Errors + 1
 print("APIConsole:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APISystem = loadfile("main/api/libs/System/System1.lua")
  local status, errorMsg = pcall(APISystem)
  if status == true then
 print("APISystem:✅")
 APISystem()
  end
  if status == false then
 Errors = Errors + 1
 print("APISystem:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APIPackages = loadfile("main/api/libs/Packages/package1.lua")
  local status, errorMsg = pcall(APIPackages)
  if status == true then
 print("APIPackages:✅")
  APIPackages()
  end
  if status == false then
 Errors = Errors + 1
 print("APIPackages:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APISprite = loadfile("main/api/libs/Sprite/sprite1.lua")
  local status, errorMsg = pcall(APISprite)
  if status == true then
 print("APISprite:✅")
 APISprite()
  end
  if status == false then
 Errors = Errors + 1
 print("APISprite:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

local APISprite = loadfile  ("main/api/libs/Sprite/sprite1.lua")
  local status, errorMsg = pcall(APISprite)
  if status == true then
 print("APISprite:✅")
 APISprite()
  end
  if status == false then
 Errors = Errors + 1
 print("APISprite:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end

local APIShader = loadfile  ("main/api/libs/Shader/shader.lua")
  local status, errorMsg = pcall(APISprite)
  if status == true then
 print("APIShader:✅")
 APISprite()
  end
  if status == false then
 Errors = Errors + 1
 print("APIShader:🛑")

 print("ErrorMessage:"..errorMsg)

 file = io.open("main/logs/errorlog"..Errors..".txt", "w+")

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