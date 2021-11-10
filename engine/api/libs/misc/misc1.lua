apiMisc = {}
function wait(seconds) --- wait timer
local start = os. time()
local actualseconds = seconds - 1
repeat until os. time() > start + actualseconds
end



  function getFrames() -- get Frames Per a Second
  function love.draw()
   love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
end


function quit() -- quit function
love.event.quit()
end
function getCursor() -- getCursor
cursor = love.mouse.getCursor()
end


return apiMisc
