TideAC = {}

local TideACS = true
if TideACS == true then
  mainFont = love.graphics.newFont("engine/assets/Fonts/Rubik.ttf", 20)
  print("TideAC loaded!")
  love.graphics.setFont(mainFont)

function love.draw()
	love.graphics.print("Tide Anticheat Loaded", 0, 0)
    wait(1)
  end
end



return TideAC