apiSystem = {}
window = {title = nil}
function openURL(url)
    love.system.openURL(url)
end
function window.title(nametitle)
love.window.setTitle(nametitle)
end

return apiSystem