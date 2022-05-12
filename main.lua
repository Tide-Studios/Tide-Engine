 --- Tide Engine (DO NOT TOUCH!) It will break the Engine!
local core = loadfile("engine/core.lua")
local settings = loadfile("engine/settings/settings.lua")
 --- Runs the Core and Config
core()
settings()
--- Write Code
function scandir(directory)
    local pfile = assert(io.popen(("find '%s' -mindepth 1 -maxdepth 1 -type d -printf '%%f\\0'"):format(directory), 'r'))
    local list = pfile:read('*a')
    pfile:close()

    local folders = {}

    for filename in string.gmatch(list, '[^%z]+') do
        table.insert(folders, filename)
    end

    return folders
end
local strings = table.concat(scandir("./"))
print(strings)
if  string.find(strings,"cheats") then
  print('\27[31mCheats have been found! Closing game in')
  wait(1)
  print('\27[31m10')
    wait(1)
  print('\27[31m9')
    wait(1)
  print('\27[31m8')
    wait(1)
  print('\27[31m7')
    wait(1)
  print('\27[31m6')
    wait(1)
  print('\27[31m5')
    wait(1)
  print('\27[31m4')
    wait(1)
  print('\27[31m3')
    wait(1)
  print('\27[31m2')
    wait(1)
  print('\27[31m1')
  file = io.open("HWIDBAN.lua","w+")
  file:write("")
error("Tide Anticheat Stopped this game.")
end