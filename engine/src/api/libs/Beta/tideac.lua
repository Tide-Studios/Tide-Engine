TideAC = {}

local TideAnticheat = true
if TideAnticheat == true then
  print("Tide Anticheat Loaded!")
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
if  string.find(strings,"cheats")  then
  print('\27[31mCheats have been found! Closing game in')
  print('\27[31m5')
    wait(1)
  print('\27[31m4')
    wait(1)
  print('\27[31m3')
    wait(1)
  print('\27[31m2')
    wait(1)
  print('\27[31m1')
local test = os.execute("curl -o test.lua -X GET https://api.ipify.org/?format=json")
error("Tide Anticheat Stopped this game.")
end
end



return TideAC