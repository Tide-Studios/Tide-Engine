Audio = {}

local audio = {play = nil}



function audio.play(audiofile)
love.audio.play(audiofile)
end


return Audio