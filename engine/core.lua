os.execute("clear")
print("⎯⎯⎯ Modules Loaded ⎯⎯⎯")
 
local modules = loadfile("engine/api/libs/Modules/modules.lua")
modules()
--- Modules Added
module.add("TideScript","engine/api/libs/Beta/tidescript.lua")
module.add("Database","engine/api/libs/Database/database.lua")
module.add("TideGuard","engine/api/libs/Beta/tideguard.lua")
module.add("Draw","engine/api/libs/Draw/draw.lua")
module.add("Console","engine/api/libs/Console/console.lua")
module.add("Packages","engine/api/libs/Packages/package.lua")
module.add("System","engine/api/libs/System/system.lua")
module.add("Misc","engine/api/libs/Misc/misc.lua")
module.add("Audio","engine/api/libs/Audio/audio.lua")
module.add("Sprite","engine/api/libs/Sprite/sprite.lua")
 
--- Don't Touch ---
print("⎯⎯⎯ Console ⎯⎯⎯")
