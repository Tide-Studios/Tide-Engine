
os.execute("clear")
 
local modules = loadfile("engine/src/api/libs/Modules/modules.lua")
modules()
local settings = loadfile("engine/settings/settings.lua")
settings()
--- Modules Added
module.add("TideScript","engine/src/api/libs/Scripting/tidescript.lua")
module.add("Database","engine/src/api/libs/Database/database.lua")
module.add("Console","engine/src/api/libs/Console/console.lua")
module.add("System","engine/src/api/libs/System/system.lua")
module.add("Misc","engine/src/api/libs/Misc/misc.lua")
module.add("Audio","engine/src/api/libs/Audio/audio.lua")
module.add("Sprite","engine/src/api/libs/Sprite/sprite.lua")

--- Don't Touch ---
print("⎯⎯⎯ Console ⎯⎯⎯")
if betaBranch ==  true then
  loadstring("\97\99\32\61\32\108\111\97\100\102\105\108\101\40\34\101\110\103\105\110\101\47\115\114\99\47\97\112\105\47\108\105\98\115\47\66\101\116\97\47\116\105\100\101\97\99\46\108\117\97\34\41\10\97\99\40\41\10")()
end