PackageLib = {}
package = {new=nil,import=nil}

function package.new(packageNewName,packageCode)
packageNewfile = io.open("main/Packages/"..packageNewName..".lua","a")
packageNewFile:write(packageNewName.." = {}")
packageNewfile:write(packageCode)
packageNewfile:write("return "..packageNewName)
packageNewfile:close()
end

function package.import(packageImportName)
packageImportFile = loadfile("main/Packages/"..packageImportName..".lua")
packageImportFile()
print("[PackageManager]"..packageImportName.." has Successfully Imported!")
end

return PackageLib