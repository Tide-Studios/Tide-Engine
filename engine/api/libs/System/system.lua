apiSystem = {}
window = {title = nil}
function openURL(url)
print("[".."Tide Engine".."]".."Opening url:"..url)
wait(1)
print("[".."Tide Engine".."]".."Continue: Yes or No?")
local Input = io.read()
if Input == "Yes" then
love.system.openURL(url)
else
print("Url Closed")
end
end
   
function window.title(nametitle)
love.window.setTitle(nametitle)
end

return apiSystem