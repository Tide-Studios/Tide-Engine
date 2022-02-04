Sprite1 = {}
sprite = {x,y,new,speed,onKeyDown,move}
sprite.speed = 5
function sprite.new(SpriteImage,StartingX,StartingY,DefaultKeys)
if DefaultKeys == true then
sprite.x = StartingX
sprite.y = StartingY

draw.image(SpriteImage,x,y)
function love.update()
print(sprite.speed)
if love.keyboard.isDown('w') then
sprite.y = sprite.y +  -sprite.speed
draw.image(SpriteImage,sprite.x,sprite.y)
end

if love.keyboard.isDown('a') then
sprite.x = sprite.x +  -sprite.speed
draw.image(SpriteImage,sprite.x,sprite.y)
end

if love.keyboard.isDown('s') then
sprite.y = sprite.y + sprite.speed
draw.image(SpriteImage,sprite.x,sprite.y)
end

if love.keyboard.isDown('d') then
sprite.x = sprite.x +  sprite.speed
draw.image(SpriteImage,sprite.x,sprite.y)
end

end
end
end

function sprite.speed(spritevalue)
sprite.speed =  spritevalue
end

function sprite.move(spritename,x,y,key)
function love.update()
if
end
end
return Sprite1