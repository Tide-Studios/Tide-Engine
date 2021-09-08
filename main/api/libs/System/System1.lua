apiSystem = {}
window = {title = nil}
function openURL(url)
function love.load()
    love.system.openURL(url)
end
end
function window.title(nametitle)
love.window.setTitle(nametitle)
end
return apiSystem