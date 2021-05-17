apiSystem = {}
function openURL(url)
function love.load()
    love.system.openURL(url)
end
end
function windowTitle(nametitle)
love.window.setTitle(nametitle)
end
return apiSystem