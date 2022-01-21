apiSystem = {}
window = {title = nil}
function openURL(url)
print("[".."Tide Engine".."]".."Opening url:"..url)
love.system.openURL(url)
end
   
function window.title(nametitle)
love.window.setTitle(nametitle)
end

return apiSystem