TideScript = {}

script = {load = nil,register = nil,object = nil,event = nil}

function script.load(script)
--- Loads Scripts
local tdsfile = loadfile("engine/assets/Scripts/"..script)
local status, errorMsg = pcall(tdsfile)
os.execute("clear")
print("⎯⎯⎯ Console ⎯⎯⎯")
if status == true then
tdsfile()
end

if status == false then
print("[Tide Engine] Script Failed/Invalid!")
end

end

function script.register(name,authors,verision)
print("[Tide Engine] Script Registered:"..name..",".."Authors:"..authors..",Verision:"..verision)
end

return TideScript