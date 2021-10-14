Sprite1 = {}
sprite = {x,y,new}
function sprite.new(SpriteImage,StartingX,StartingY,DefaultKeys)
if DefaultKeys == true then
sprite.x = StartingX
sprite.y = StartingY
draw.image(SpriteImage,x,y)
function love.update()
if love.keyboard.isDown('w') then
sprite.y = sprite.y + -5 
draw.image(SpriteImage,sprite.x,sprite.y)
end

if love.keyboard.isDown('a') then
sprite.x = sprite.x + -5
draw.image(SpriteImage,sprite.x,sprite.y)
end

if love.keyboard.isDown('s') then
sprite.y = sprite.y + 5
draw.image(SpriteImage,sprite.x,sprite.y)
end

if love.keyboard.isDown('d') then
sprite.x = sprite.x + 5
draw.image(SpriteImage,sprite.x,sprite.y)
end

end
end
end


return Sprite1