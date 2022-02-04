Sprite1 = {}
sprite = {x,y,new,speed,onKeyDown,move,SpriteImage}
sprite.speed = 5
function sprite.new(SpriteImage,StartingX,StartingY)
sprite.x = StartingX
sprite.y = StartingY
draw.image(SpriteImage,x,y)
end

function sprite.speed(spritevalue)
sprite.speed =  spritevalue
end

function sprite.move(SpriteImage,SpriteX,SpriteY,key,SpriteMove)
sprite.x = SpriteX
sprite.y = SpriteY
sprite.speed = 5
function love.update()
if love.keyboard.isDown(key) then
if SpriteMove 
sprite.x = sprite.x +  sprite.speed
draw.image(SpriteImage,sprite.x,sprite.y)
end

end

end
return Sprite1