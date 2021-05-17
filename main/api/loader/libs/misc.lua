apiMisc = {}
--- Wait Function
function wait(seconds)
local start = os. time()
local actualseconds = seconds - 1
repeat until os. time() > start + actualseconds
end

function import(file)
local opens = loadfile()
opens()
end
--- Import Function

  function fpsCount()
  function love.draw()
   love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
end


function quit()
love.event.quit()
end
---
--- Returns APIMisc
return apiMisc
