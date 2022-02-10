DrawLib = {}
draw = {text = nil,line = nil,image = nil,button=nil,dragText=nil,rectangle=nil,dragRectangle=nil,draggableImage=nil,textFonted=nil, video = nil, draggableVideo = nil}

  
function draw.text(text,TextX,TextY)--- Draw Text function is defiend
love.graphics.print(text,TextX,TextY)
end

function draw.rectangle(mode,DrawRecX,DrawRecY,DrawRecWid,DrawRecHei)

 love.graphics.rectangle(mode,DrawRecX,DrawRecY,DrawRecWid,DrawRecHei)
end

function draw.video(videofile,videoX,videoY)
function love.load()
    video = love.graphics.newVideo(videofile)
    video:play()
end

    love.graphics.draw(video, videoX, videoY)
end
function draw.line(LineX1,LineY1, LineX2,LineY2,LineX3,LineY3,LineX4,LineY4) --- Draws the Line
  love.graphics.line(LineX1,LineY1,LineX2,LineY2)
end

function draw.draggableVideo(DraggableVideo,DraggableVideoX,DraggableVideoY,DraggableVideoMouse)

draw.video(DraggableVideo,DraggableVideoX,DraggableVideoY)

function love.update()
if DraggableVideoMouse == "LMB" then
 if love.mouse.isDown(2) then
 VideoMouseX, VideoMouseY = love.mouse.getPosition()
 draw.video(DraggableVideo, VideoMouseX, VideoMouseY)
      end
    end

if DraggableVideoMouse == "RMB" then
 if love.mouse.isDown(1) then
 VideoMouseX, VideoMouseY = love.mouse.getPosition()
 draw.video(DraggableVideo,VideoMouseX,VideoMouseY)
 end
end

  end
end


function draw.draggableText(DraggableText,TextOrginalX,TextOrginalY,ButtonTextNum) 

draw.text(DraggableText,TextOrginalX,TextOrginalY) --- Draws the Text

function love.update()

if ButtonTextNum == "LMB" then
if love.mouse.isDown(2) then --- Makes Sure the Button Is Down

TextMouseX,TextMouseY = love.mouse.getPosition()
draw.text(DraggableText,TextMouseX,TextMouseY) --- Makes the Text dragableText

end
end
end

if ButtonTextNum == "RMB" then

function love.update()

if love.mouse.isDown(1) then --- Makes Sure the Button Is Down

TextMouseX,TextMouseY = love.mouse.getPosition()
draw.text(DraggableText,TextMouseX,TextMouseY) --- Makes the Text dragableText

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

function draw.draggableImage(Dragimage,DragimageX,DragimageY,ImageMouse)
draw.image(Dragimage,DragimageX,DragimageY)
function love.update()
  if ImageMouse == "LMB" then
    if love.mouse.isDown(2) then
    ImgMouseX,ImgMouseY = love.mouse.getPosition()
    draw.image(Dragimage,ImgMouseX,ImgMouseY)
end
end
if ImageMouse == "RMB" then
  if love.mouse.isDown(1) then
  ImgMouseX,ImgMouseY = love.mouse.getPosition()  
  draw.image(Dragimage,ImgMouseX,ImgMouseY)
end
end

end
end


function draw.textFonted(TextFont,TextFontFile,TextFontX,TextFontY,TextPixel)
newFont = love.graphics.newFont("engine/assets/Fonts/"..TextFontFile, TextPixel)

	love.graphics.setFont(newFont)

	love.graphics.print(TextFont,TextFontX,TextY)
end


function draw.button(ButtonX1,ButtonY1,ButtonX2,ButtonY2) --- 
    love.graphics.rectangle("fill",ButtonX1,ButtonY1,ButtonX2,ButtonY2)
end




function draw.image(image, imagex,imagey) --- makes the first function
function love.load() -- loads the image
loadimage = love.graphics.newImage(image)
end
function love.draw()
love.graphics.draw(loadimage, imagex, imagey)
end
end

--- FPS Module
function getFrames()
 -- Draws FPS on Screen
   love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
--- Returns DrawAPI Package
return DrawLib