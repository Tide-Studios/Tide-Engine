api = {}
-- Loader --
local APIdraw = loadfile("main/api/loader/libs/draw.lua")
APIdraw()
local APImisc =  loadfile("main/api/loader/libs/misc.lua")
APImisc()

local APISystem = loadfile("main/api/loader/libs/systems.lua")
APISystem()
local Config = loadfile("main/api/config/config.lua")
--- Misc Functions


--- Keyboard and Mouse Function
function getCursor()
cursor = love.mouse.getCursor()
end
--- Config Loads

--- Audio API

function audioPlay(file,typefile)
initfile=love.audio.newSource(file,typefile)
love.audio.play(initfile)
end
return api