 DrawAPI = {}
 

function drawText(text,TextX,TextY) --- Draw Text function is defiend
function love.draw() --- draws the text on screen
love.graphics.print(text,TextX,TextY)
end
end

function drawLine(LineX1,LineY1, LineX2,LineY2,LineX3,LineY3,LineX4,LineY4) --- Draws the Line
function love.draw()
love.graphics.line(LineX1,LineY1,LineX2,LineY2)
end
end



function button(ButtonX,ButtonY,ButtonX2,ButtonY2)
function love.draw()
    love.graphics.rectangle("fill",ButtonX,ButtonY,ButtonX2,ButtonY2)
end
end




function drawImage(image, imagex,imagey)
function love.load()
loadimage = love.graphics.newImage(image)
end
function love.draw()
love.graphics.draw(loadimage, imagex, imagey)
 end
end


--- FPS Module
--- FPS Module
function fpscounter()
function love.draw()
   love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
end
--- Returns DrawAPI Package
return DrawAPI