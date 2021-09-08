api = {}
-- Loader --
local APIdraw = loadfile("main/api/libs/Draw/draw.lua")
local status, errorMsg = pcall(APIdraw)
local Errors = 0
if status == true then
  print("APIDraw: No Errors Catched")
 APIdraw()
 end
if status == false then
 Errors = Errors + 1
 print("APIDraw: Error Found!")
 print("ErrorMessage:"..errorMsg)
 file = io.open("main/api/logs/logs"..Errors..".txt", "w+")
 file:write("Error: "..errorMsg..", "..os.date("%x"))
 file:close()
end
local APImisc =  loadfile("main/api/libs/misc/misc1.lua")
local APImisc2 = loadfile("main/api/libs/misc/misc2.lua")
APImisc()
APImisc2()
local APIConsole = loadfile("main/api/libs/Console/console.lua")
APIConsole()
local APISystem = loadfile("main/api/libs/System/System1.lua")
APISystem()
local APIPackages = loadfile("main/api/libs/Packages/package1.lua")
APIPackages()
local APISprite = loadfile("main/api/libs/Sprite/sprite1.lua")
APISprite()
if love.window.isOpen() then
print("Love2d and IceWave Loaded!")
end
return api