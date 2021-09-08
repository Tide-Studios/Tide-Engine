 DrawLib = {}
 draw = {text = nil,line = nil,image = nil,button=nil,dragText=nil,rectangle=nil,dragRectangle=nil,dragableImage=nil}

  
function draw.text(text,TextX,TextY)s --- Draw Text function is defiend
function love.draw() --- draws the text on screen
love.graphics.print(text,TextX,TextY)
end
end

function draw.rectangle(mode,DrawRecX,DrawRecY,DrawRecWid,DrawRecHei)
function love.draw()
 love.graphics.rectangle(mode,DrawRecX,DrawRecY,DrawRecWid,DrawRecHei)
 end
end

function draw.line(LineX1,LineY1, LineX2,LineY2,LineX3,LineY3,LineX4,LineY4) --- Draws the Line
function love.draw()
love.graphics.line(LineX1,LineY1,LineX2,LineY2)
end
end


function draw.draggableText(DragText,TextOrgX,TextOrgY,ButtonTextNum) 

draw.text(DragText,TextOrgX,TextOrgY) --- Draws the Text

function love.update()

if ButtonTextNum == "LMB" then
if love.mouse.isDown(2) then --- Makes Sure the Button Is Down

TextMouseX,TextMouseY = love.mouse.getPosition()
draw.text(DragText,TextMouseX,TextMouseY) --- Makes the Text dragableText

end
end
end

if ButtonTextNum == "RMB" then

function love.update()

if love.mouse.isDown(1) then --- Makes Sure the Button Is Down

TextMouseX,TextMouseY = love.mouse.getPosition()
draw.text(DragText,TextMouseX,TextMouseY) --- Makes the Text dragableText

end
end
end
end


function draw.draggableRectangle(DragMode,DragRecX,DragRecY,DragRecWidth,DragRecheight,RecButtonNumber)

draw.rectangle(DragMode,DragRecX,DragRecY,DragRecWidth,DragRecheight)

if RecButtonNumber == "RMB" then
function love.update()
if love.mouse.isDown(1) then
RecMouseX,RecMouseY = love.mouse.getPosition()
draw.rectangle(DragMode,RecMouseX,RecMouseY,DragRecWidth,DragRecheight)
end
end
end

if RecButtonNumber == "LMB" then
function love.update()
if love.mouse.isDown(2) then
RecMouseX,RecMouseY = love.mouse.getPosition()
draw.rectangle(DragMode,RecMouseX,RecMouseY,DragRecWidth,DragRecheight)
end
end
end

end

function draw.draggableImage(Dragimage,DragimageX,DragimageY,ButtonImgNum)
draw.image(Dragimage,DragimageX,DragimageY)
function love.update()
if love.mouse.isDown(ButtonImgNum) then
ImgMouseX,ImgMouseY = love.mouse.getPosition()
draw.image(Dragimage,ImgMouseX,ImgMouseY)
end
end
end



function draw.button(ButtonX1,ButtonY1,ButtonX2,ButtonY2) --- 
function love.draw()
    love.graphics.rectangle("fill",ButtonX1,ButtonY1,ButtonX2,ButtonY2)
end
end




function draw.image(image, imagex,imagey) --- makes the first function
function love.load() -- loads the image
loadimage = love.graphics.newImage(image)
end
function love.draw() --
love.graphics.draw(loadimage, imagex, imagey)
 end
end



--- FPS Module
function fpscounter()
function love.draw() -- Draws FPS on Screen
   love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
end
--- Returns DrawAPI Package
return DrawLib