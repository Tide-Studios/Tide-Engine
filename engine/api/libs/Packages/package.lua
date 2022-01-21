PackageLib = {}
-- No Longer in use, Being Replaced by Tide Scripting API
package = {new=nil,import=nil,name = nil, delete = nil}


function package.new(packageNewName,packageCode)
packageNewfile = io.open("main/Packages/"..packageNewName..".lua","a")
packageNewFile:write(packageNewName.." = {}")
packageNewfile:write(packageCode)
packageNewfile:write("return "..packageNewName)
packageNewfile:close()
end

function package.import(packageImportName)
packageImportFile = loadfile("engine/assets/Packages/"..packageImportName..".lua")
local status,errorMsg = pcall(packageImportFile)

if status == true then
print("[Luabits]"..packageImportName.." has Successfully Imported!")
else
print("[Luabit]"..packageImportName.." has failed! Please Reload or find the error!")
print("Error:"..errorMsg)
end
end


function package.delete(packageDelete)
os.remove("engine/assets/Packages/"..packageDelete)
end

return PackageLib